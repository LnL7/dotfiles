{ pkgs }:

rec {
  allowBroken = true;
  allowUnfree = true;

  haskellPackageOverrides = self : super : (let inherit (pkgs.haskell) lib; in {
    shake = lib.dontCheck super.shake;
    zip-archive = lib.dontCheck super.zip-archive;
  });

  packageOverrides = pkgs : rec {

    nginx = pkgs.callPackage ./nginx {};

    potion_HEAD = pkgs.callPackage ./potion/HEAD.nix {};

    nodePackages =
      let
        self = pkgs.nodePackages.override {
          inherit self;
          generated = pkgs.nodePackages // pkgs.callPackage ./node-packages { inherit self; };
        };
      in self;

    ghcEnv = pkgs.haskellPackages.ghcWithPackages (p : with p; [
      ghc cabal2nix cabal-install stack alex happy hoogle halive shake hspec # hdevtools
    ]);


    nixEnv = with pkgs; buildEnv {
      name = "nix-env";
      paths = [
        nix-prefetch-scripts
        nix-repl
        nix-serve
      ];
    };

    shellEnv = with pkgs; buildEnv {
      name = "shell-env";
      paths = [
        awscli
        bashCompletion
        bazaar
        cloc
        ctags
        curl
        # exercism
        jq
        mercurial
        mosh
        nmap
        s3cmd
        silver-searcher
        tmux
        watch

        gitEnv
      ];
    };

    gitEnv = with pkgs; buildEnv {
      name = "git-env";
      paths = [
        git
      ] ++ (with gitAndTools; [
        hub
      ]);
    };

    vimEnv = with pkgs; buildEnv {
      name = "vim-env";
      paths = [
        (vim_configurable.customize {
          name = "vim";
          vimrcConfig = {
            customRC = ''
              source $HOME/.vimrc
            '';
            vam.pluginDictionaries = [
              { names = [ "youcompleteme" ]; }
            ];
          };
        })
      ];
    };

    nvimEnv = with pkgs; buildEnv {
      name = "nvim-env";
      paths = [
        (neovim.override {
          # vimAlias = true;
          configure = {
            customRC = ''
              source $HOME/.vimrc
            '';
            vam.pluginDictionaries = [
              { names = [ "youcompleteme" ]; }
            ];
          };
        })
      ];
    };

    serviceEnv = with pkgs; buildEnv {
      name = "service-env";
      paths = [
        postgresql
        redis
        serviceNginx
      ];
    };

    dataDir = "/nix/data";

    plistService = pkgs.callPackage ./system/plist-service {};

    serviceNginx = with pkgs; plistService {
      name = "nginx";
      programArgs = [ "${nginx}/bin/nginx" "-g" "daemon off;" "-p" "${dataDir}/nginx" ];
      keepAlive = true;
      runAtLoad = true;
      stdout = "${dataDir}/var/log/nginx.log";
      stderr = "${dataDir}/var/log/nginx.log";
    };

    haskellEnv = with pkgs; buildEnv {
      name = "haskell-env";
      paths = [ ghcEnv ];
    };

    ocamlEnv = with pkgs; buildEnv {
      name = "ocaml-env";
      paths = [
        ocaml
      ] ++ (with ocamlPackages; [
        findlib
        ocaml_batteries
        opam
        ounit
      ]);
    };

    erlangEnv = with pkgs; buildEnv {
      name = "erlang-env";
      paths = [
        erlang
        elixir
        # riak
      ];
    };

    clojureEnv = with pkgs; buildEnv {
      name ="clojure-env";
      paths = [
        clojure
        leiningen
      ];
    };

    rustEnv = with pkgs; buildEnv {
      name = "rust-env";
      paths = [
        rustc
      ];
    };

    goEnv = with pkgs; buildEnv {
      name = "go-env";
      paths = [
        go
      ] ++ (with goPackages; [
        tools
      ]);
    };

    rubyEnv = with pkgs; buildEnv {
      name = "ruby-env";
      paths = [
        bundix
        bundler
        ruby
      ];
    };

    pythonEnv = with pkgs; buildEnv {
      name = "python-env";
      paths = [
        python
        python2nix
        pypi2nix
      ] ++ (with pythonPackages; [
        virtualenv
      ]);
    };

    nodeEnv = with pkgs; buildEnv {
      name = "node-env";
      paths = [
        nodejs
      ] ++ (with nodePackages; [
        npm2nix
        babel
        # browser-sync
      ]);
    };

    # fooEnv = with pkgs; myEnvFun {
    #   name = "foo";
    #   shell = "${bash}/bin/bash";
    #   buildInputs = [];
    #   extraCmds = ''
    #   '';
    # };
  };
}
