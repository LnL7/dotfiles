{ stdenv, writeText }:

let
  config = writeText "nginx.conf" ''
    user  root;
    worker_processes  1;

    error_log  /var/log/nginx/error.log warn;
    pid        /var/run/nginx.pid;

    events {
      worker_connections  1024;
    }

    http {
      include       /etc/nginx/mime.types;
      default_type  application/octet-stream;

      log_format  main  '$remote_addr - $remote_user [$time_local] "$request" '
                        '$status $body_bytes_sent "$http_referer" '
                        '"$http_user_agent" "$http_x_forwarded_for"';

      access_log  /var/log/nginx/access.log  main;

      sendfile        on;
      #tcp_nopush     on;

      keepalive_timeout  65;

      #gzip  on;

      server {
        listen 2375;

        location / {
          proxy_pass http://unix:/var/run/docker.sock:;
          proxy_set_header X-Docker-Unprivileged true;
        }
      }
    }
  '';

in stdenv.mkDerivation {
  name = "docker-service";
  shellHook = ''
  export PS1="docker> "

  http_url() {
    local exposed_port
    exposed_port=$(docker port nginx-docker 2375/tcp | awk -F':' '{print $2}')
    echo "http://127.0.0.1:$exposed_port"
  }

  start() {
    docker run -d --privileged --userns=host \
      -p 2375 \
      -v ${config}:/etc/nginx/nginx.conf \
      -v /var/run/docker.sock:/var/run/docker.sock \
      --name=nginx-docker nginx:1.10-alpine
  }

  stop() {
    docker rm -f nginx-docker
  }
  '';
}
