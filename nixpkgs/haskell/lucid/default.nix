# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, bifunctors, blazeBuilder, hspec, HUnit, mtl, parsec, text
, transformers, unorderedContainers
}:

cabal.mkDerivation (self: {
  pname = "lucid";
  version = "2.9.0";
  sha256 = "0zbci795p3fhij9x41xxd2113wilgx36x46mi5nizi3gn2n8wnwh";
  buildDepends = [
    blazeBuilder mtl text transformers unorderedContainers
  ];
  testDepends = [ bifunctors hspec HUnit mtl parsec text ];
  meta = {
    homepage = "https://github.com/chrisdone/lucid";
    description = "Clear to write, read and edit DSL for HTML";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})