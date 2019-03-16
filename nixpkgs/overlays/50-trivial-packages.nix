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

    python = super.python3.pkgs.callPackage
      ({ buildEnv, python, ipython, setuptools, jedi, decorator, pickleshare
       , traitlets, prompt_toolkit, pygments, backcall, appnope, pexpect
       , parso, ipython_genutils, six, wcwidth, ptyprocess
       }:
       buildEnv {
         name = "python${python.version}-with-packages";
         paths = [
           python ipython setuptools jedi decorator pickleshare
           traitlets prompt_toolkit pygments backcall appnope pexpect
           parso ipython_genutils six wcwidth ptyprocess
         ];
         pathsToLink = [ "/lib/python3.7" ];
         postBuild = ''
           mkdir -p $out/bin
           cat <<-EOF > $out/bin/ipython
           #!$out/bin/python3.7
           # -*- coding: utf-8 -*-
           import re
           import sys

           from IPython import start_ipython

           if __name__ == '__main__':
               sys.argv[0] = re.sub(r'(-script\.pyw?|\.exe)?$', ''', sys.argv[0])
               sys.exit(start_ipython())
           EOF
           chmod +x $out/bin/ipython
           cp --no-dereference ${python}/bin/python3.7 ${python}/bin/python3 $out/bin
         '';
       }) { };

    SFMono = super.callPackage
      ({ runCommandNoCC }:
       runCommandNoCC "SFMono-apple-10.14.0" {} ''
         mkdir -p $out/share/fonts/opentype
         cp ${../../fonts/sf-mono}/*.otf $out/share/fonts/opentype
       '') {};
  };
}
