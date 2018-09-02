self: super:

{
  latest = super.latest or {} // {
    cachix = import (builtins.fetchTarball https://github.com/cachix/cachix/archive/master.tar.gz) {};
    nix = import "${builtins.fetchTarball https://github.com/NixOS/nix/archive/master.tar.gz}/release.nix" {};
    nixpkgs = import (builtins.fetchTarball https://github.com/NixOS/nixpkgs/archive/master.tar.gz) {};
  };
}
