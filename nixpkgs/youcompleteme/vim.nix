{ stdenv, writeTextDir, youcompleteme }:

let
  name = "youcompleteme-vim";
  drv = writeTextDir "youcompleteme.vim" ''
    set runtimepath+=${youcompleteme}
  '';

in stdenv.lib.overrideDerivation drv (oldAttrs : { name = "${name}"; })
