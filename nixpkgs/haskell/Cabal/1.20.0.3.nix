{ mkDerivation, array, base, bytestring, containers, deepseq
, directory, extensible-exceptions, filepath, HUnit, pretty
, process, regex-posix, stdenv, test-framework
, test-framework-hunit, test-framework-quickcheck2, time, unix
}:
mkDerivation {
  pname = "Cabal";
  version = "1.20.0.3";
  sha256 = "0vq1xcwvvk74jkzp7386ldyrls8qszg3rj4l37fyq3fvjkqnx80v";
  doCheck = false;
  buildDepends = [
    array base bytestring containers deepseq directory filepath pretty
    process time unix
  ];
  testDepends = [
  ];
  preCheck = "unset GHC_PACKAGE_PATH; export HOME=$NIX_BUILD_TOP";
  homepage = "http://www.haskell.org/cabal/";
  description = "A framework for packaging Haskell software";
  license = stdenv.lib.licenses.bsd3;
}
