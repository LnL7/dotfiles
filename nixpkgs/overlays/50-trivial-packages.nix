self: super:

let inherit (super) lib; in

{
  lnl = super.lnl or {} // {
    chunkwm-statusbar = super.callPackage
      ({ stdenv, writeScriptBin, coreutils, chunkwm }:
       writeScriptBin "chunkwm-statusbar" ''
         #!${stdenv.shell}
         set -e
         export PATH=${lib.makeBinPath [coreutils chunkwm]}

         mode=$(chunkc tiling::query --desktop mode 2>/dev/null)
         window=$(chunkc tiling::query --window tag 2>/dev/null | head -c 80)
         echo "[$mode] $window"
       '') { };

    git-statusbar = super.callPackage
      ({ stdenv, writeScriptBin, coreutils, gawk, git }:
       writeScriptBin "git-statusbar" ''
         #!${stdenv.shell}
         set -e
         export PATH=${lib.makeBinPath [coreutils gawk git]}

         fork=$(git "$@" log --format=format:%h origin/master...lnl/master 2> /dev/null | awk 'END {print NR}')
         head=$(git "$@" log --format=format:%h origin/master...HEAD 2> /dev/null | awk 'END {print NR}')
         echo "[$head/$fork] $(git "$@" log --oneline -1 origin/master | head -1)"
         git "$@" rev-parse nixos/master
       '') { };

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
