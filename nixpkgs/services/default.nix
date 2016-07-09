{ callPackage }:

{
  docker = callPackage ./nginx-docker.nix {};
}
