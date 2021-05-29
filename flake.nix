{
  description = "LnL's collection of dotfiles";

  inputs = {
    nixpkgs.url = "github:LnL7/nixpkgs";

    vim-nix.url = "github:LnL7/vim-nix";
    vim-nix.flake = false;
  };

  outputs = { self, nixpkgs, vim-nix }: {

    lib = {
      verisons = import ./nixpkgs/lib/versions.nix;
    };

    packages.x86_64-darwin =
      let
        pkgs = import nixpkgs {
          overlays = self.darwinOverlays;
          system = "x86_64-darwin";
        };
      in
      {
        cpp = pkgs.callPackage
          ({ buildEnv, clang-unwrapped }:
           buildEnv {
            name = "${clang-unwrapped.name}-tools";
            paths = [ ];
            pathsToLink = [ "/bin" ];
            postBuild = ''
              mkdir -p $out/bin
              ln -s ${clang-unwrapped}/bin/clangd $out/bin
            '';
           }) { inherit (pkgs.llvmPackages_9) clang-unwrapped; };

        elixir = pkgs.beam.packages.erlangR23.callPackage
          ({ buildEnv, elixir, erlang }:
           buildEnv {
            name = "${elixir.name}-tools";
            paths = [ ];
            pathsToLink = [ "/bin" ];
            postBuild = ''
              mkdir -p $out/bin
              ln -s ${elixir}/bin/iex $out/bin
              ln -s ${elixir}/bin/mix $out/bin
            '';
           }) { };

        haskell = pkgs.haskellPackages.callPackage
         ({ buildEnv, ghc, cabal2nix, cabal-install, hoogle, ghcide, hie }:
          buildEnv {
            name = "${ghc.name}-tools";
            paths = [ cabal2nix cabal-install hoogle ghcide /*hie*/ ];
            pathsToLink = [ "/bin" ];
            postBuild = ''
              mkdir -p $out/bin
              ln -s ${ghc}/bin/ghci $out/bin
            '';
          }) { inherit (pkgs.lnl) hoogle ghcide hie;
               cabal-install = pkgs.haskellPackages.cabal-install_2_4_0_0; };

        python = pkgs.python3.pkgs.callPackage
          ({ buildEnv, python, ipython, isort, mypy, poetry, python-language-server }:
           buildEnv {
             name = "${python.name}-tools";
             paths = [ ipython isort mypy poetry python-language-server ];
             pathsToLink = [ "/bin" ];
             postBuild = ''
               mkdir -p $out/bin
               cp --no-dereference ${python}/bin/python3.7 ${python}/bin/python3 $out/bin
             '';
           }) { };

        rust = pkgs.callPackage
          ({ buildEnv, rustc, clippy, rust-analyzer }:
           buildEnv {
             name = "${rustc.name}-tools";
             paths = [ clippy rust-analyzer ];
             pathsToLink = [ "/bin" ];
           }) { };

      };

    darwinOverlays = [
      (self: super: {
        lnl = super.lnl or {} // {
          inherit vim-nix;
        };
      })

      (import ./nixpkgs/overlays/10-dev-overrides.nix)
      (import ./nixpkgs/overlays/20-haskell-overrides.nix)
      (import ./nixpkgs/overlays/20-trivial-overrides.nix)
      (import ./nixpkgs/overlays/50-all-packages.nix)
      (import ./nixpkgs/overlays/50-darwin-impure-packages.nix)
      (import ./nixpkgs/overlays/50-nixpkgs-channels.nix)
      (import ./nixpkgs/overlays/50-recurse-attributes.nix)
      (import ./nixpkgs/overlays/50-trivial-packages.nix)
      (import ./nixpkgs/overlays/50-vim-packages.nix)
    ];

  };
}
