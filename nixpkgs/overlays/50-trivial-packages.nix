self: super:

{
  lnl = super.lnl or {} // {
    chunkwm-statusbar = super.callPackage
      ({ stdenv, writeScriptBin, coreutils, chunkwm }:
       writeScriptBin "chunkwm-statusbar" ''
         #!${stdenv.shell}
         set -e
         export PATH=${stdenv.lib.makeBinPath [coreutils chunkwm]}

         mode=$(chunkc tiling::query --desktop mode 2>/dev/null)
         window=$(chunkc tiling::query --window tag 2>/dev/null | head -c 80)
         echo "[$mode] $window"
       '') { };

    git-statusbar = super.callPackage
      ({ stdenv, writeScriptBin, coreutils, gawk, git }:
       writeScriptBin "git-statusbar" ''
         #!${stdenv.shell}
         set -e
         export PATH=${stdenv.lib.makeBinPath [coreutils gawk git]}

         fork=$(git "$@" log --format=format:%h origin/master...lnl/master 2> /dev/null | awk 'END {print NR}')
         head=$(git "$@" log --format=format:%h origin/master...HEAD 2> /dev/null | awk 'END {print NR}')
         echo "[$head/$fork] $(git "$@" log --oneline -1 origin/master | head -1)"
         git "$@" rev-parse nixos/master
       '') { };

    cpp = super.callPackage
      ({ buildEnv, clang-unwrapped }:
       buildEnv {
        name = "${clang-unwrapped.name}-tools";
        paths = [ ];
        pathsToLink = [ "/bin" ];
        postBuild = ''
          mkdir -p $out/bin
          ln -s ${clang-unwrapped}/bin/clangd $out/bin
        '';
       }) { inherit (super.llvmPackages_9) clang-unwrapped; };

    elixir = super.beam.packages.erlang.callPackage
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

    haskell = super.haskellPackages.callPackage
     ({ buildEnv, ghc, cabal2nix, cabal-install, hoogle, ghcide, hie }:
      buildEnv {
        name = "${ghc.name}-tools";
        paths = [ cabal2nix cabal-install hoogle /*ghcide*/ /*hie*/ ];
        pathsToLink = [ "/bin" ];
        postBuild = ''
          mkdir -p $out/bin
          ln -s ${ghc}/bin/ghci $out/bin
        '';
      }) { inherit (self.lnl) hoogle ghcide hie;
           cabal-install = self.haskellPackages.cabal-install_2_4_0_0; };

    python = super.python3.pkgs.callPackage
      ({ buildEnv, python, ipython, isort, mypy, python-language-server }:
       buildEnv {
         name = "${python.name}-tools";
         paths = [ ipython isort mypy python-language-server ];
         pathsToLink = [ "/bin" ];
         postBuild = ''
           mkdir -p $out/bin
           cp --no-dereference ${python}/bin/python3.7 ${python}/bin/python3 $out/bin
         '';
       }) { };

    rust = super.rustPackages.callPackage
      ({ buildEnv, rustc, clippy, rust-analyzer }:
       buildEnv {
         name = "${rustc.name}-tools";
         paths = [ clippy rust-analyzer ];
         pathsToLink = [ "/bin" ];
       }) { };

    vault-zsh-completions = super.callPackage
      ({ stdenv, fetchurl }:
       stdenv.mkDerivation {
         name = "vault-zsh-completions-2016-01-15";
         src = fetchurl {
           url = https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/b9ace281798c4c2565d57dc67d4c0687d9d36e82/plugins/vault/_vault;
           sha256 = "16nmqlahpkffbiq0y615pkbd3blmfiyw37bxj738qfcz8bwxhkbj";
         };
         buildCommand = ''
           mkdir -p $out/share/zsh/site-functions
           cp $src $out/share/zsh/site-functions/_vault
         '';
       }) {};


    # SFMono = super.callPackage
    #   ({ runCommandNoCC }:
    #    runCommandNoCC "SFMono-apple-10.14.0" {} ''
    #      mkdir -p $out/share/fonts/opentype
    #      cp ${../../fonts/sf-mono}/*.otf $out/share/fonts/opentype
    #    '') {};
  };
}
