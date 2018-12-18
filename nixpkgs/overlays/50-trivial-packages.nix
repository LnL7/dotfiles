self: super:

{
  lnl = super.lnl or {} // {
    darwinpkgs = super.callPackage
      ({ writeTextFile }:
       writeTextFile {
         name = "darwinpkgs";
         destination = "/default.nix";
         text = ''
           { ... }@args: (import <darwin> args).pkgs
         '';
       }) {};

    nixospkgs = super.callPackage
      ({ writeTextFile }:
       writeTextFile {
         name = "nixospkgs";
         destination = "/default.nix";
         text = ''
           { ... }@args: (import <nixos/nixos> args).pkgs
         '';
       }) {};

    chunkwm-statusbar = super.callPackage
      ({ stdenv, writeScriptBin, coreutils, chunkwm }:
       writeScriptBin "chunkwm-statusbar" ''
         #!${stdenv.shell}
         set -e
         export PATH=${stdenv.lib.makeBinPath [coreutils chunkwm]}

         mode=$(chunkc tiling::query --desktop mode 2>/dev/null)
         window=$(chunkc tiling::query --window tag 2>/dev/null | head -c 80)
         echo "[$mode] $window"
       '') { inherit (self.lnl) chunkwm; };

    git-statusbar = super.callPackage
      ({ stdenv, writeScriptBin, coreutils, gawk, git }:
       writeScriptBin "git-statusbar" ''
         #!${stdenv.shell}
         set -e
         export PATH=${stdenv.lib.makeBinPath [coreutils gawk git]}

         fork=$(git "$@" log --format=format:%h origin/master...lnl/master 2> /dev/null | awk 'END {print NR}')
         head=$(git "$@" log --format=format:%h origin/master...HEAD 2> /dev/null | awk 'END {print NR}')
         echo "[$head/$fork] $(git "$@" log --oneline -1 origin/master | head -1)"
         git "$@" rev-parse origin/master
       '') {};

    SFMono = super.callPackage
      ({ runCommandNoCC }:
       runCommandNoCC "SFMono-apple-10.14.0" {} ''
         mkdir -p $out/share/fonts/opentype
         cp ${../../fonts/sf-mono}/*.otf $out/share/fonts/opentype
       '') {};
  };
}
