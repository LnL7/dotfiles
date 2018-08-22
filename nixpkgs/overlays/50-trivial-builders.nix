self: super:

{
  lnl = super.lnl or {} // {
    buildDir = super.callPackage
      ({ stdenv }:
       { name, files }:
       stdenv.mkDerivation {
         inherit name files;
         buildCommand = ''
           mkdir $out
           for f in $files; do
               ln -s $f $out/''${f#*-}
           done
         '';
       }) {};
  };
}
