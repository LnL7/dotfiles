{
  description = "LnL's collection of dotfiles";

  outputs = { self }: {

    lib = {
      verisons = import ./nixpkgs/lib/versions.nix;
    };

    systemOverlays.x86_64-darwin = [
      (import ./nixpkgs/overlays/10-dev-overrides.nix)
      (import ./nixpkgs/overlays/20-haskell-overrides.nix)
      (import ./nixpkgs/overlays/20-trivial-overrides.nix)
      (import ./nixpkgs/overlays/50-all-packages.nix)
      (import ./nixpkgs/overlays/50-darwin-impure-packages.nix)
      (import ./nixpkgs/overlays/50-nixpkgs-channels.nix)
      (import ./nixpkgs/overlays/50-recurse-attributes.nix)
      (import ./nixpkgs/overlays/50-trivial-builders.nix)
      (import ./nixpkgs/overlays/50-trivial-packages.nix)
      (import ./nixpkgs/overlays/50-vim-packages.nix)
    ];

  };
}
