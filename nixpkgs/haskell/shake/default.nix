# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, binary, deepseq, extra, filepath, hashable, jsFlot
, jsJquery, random, time, transformers
, unorderedContainers, utf8String
# , QuickCheck
}:

cabal.mkDerivation (self: {
  pname = "shake";
  version = "0.14.3";
  sha256 = "1s5xm205k3pvndn21vd0y9mnggrm91psf64mw445r08xasi658vl";
  isLibrary = true;
  isExecutable = true;
  doCheck = false;
  buildDepends = [
    binary deepseq extra filepath hashable jsFlot jsJquery random time
    transformers unorderedContainers utf8String
  ];
  testDepends = [
    # binary deepseq extra filepath hashable jsFlot jsJquery QuickCheck
    # random time transformers unorderedContainers utf8String
  ];
  meta = {
    homepage = "http://www.shakebuild.com/";
    description = "Build system library, like Make, but more accurate dependencies";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
