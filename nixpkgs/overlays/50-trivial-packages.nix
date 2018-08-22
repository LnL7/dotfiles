self: super:

{
  lnl = super.lnl or {} // {
    dotfiles = { name = "dotfiles"; outPath = builtins.toString ../..; };
    dotpkgs = { name = "dotpkgs"; outPath = builtins.toString ../.; };

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
  };
}
