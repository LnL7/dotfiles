{ mkDerivation, array, async, base, base16-bytestring, binary
, bytestring, Cabal, containers, cryptohash-sha256, deepseq
, directory, echo, edit-distance, filepath, hackage-security
, hashable, HTTP, mtl, network, network-uri, parsec, pretty
, process, random, resolv, stdenv, stm, tar, text, time, unix
, zip-archive, zlib
}:
mkDerivation {
  pname = "cabal-install";
  version = "2.4.1.0";
  sha256 = "69bcb2b54a064982412e1587c3c5c1b4fada3344b41b568aab25730034cb21ad";
  revision = "3";
  editedCabalFile = "1mnm6mfrgavq3blvkm3wz45pqrj10apjihg1g9cds58qp19m9r1h";
  isLibrary = false;
  isExecutable = true;
  setupHaskellDepends = [ base Cabal filepath process ];
  executableHaskellDepends = [
    array async base base16-bytestring binary bytestring Cabal
    containers cryptohash-sha256 deepseq directory echo edit-distance
    filepath hackage-security hashable HTTP mtl network network-uri
    parsec pretty process random resolv stm tar text time unix
    zip-archive zlib
  ];
  doCheck = false;
  postInstall = ''
    mkdir $out/etc
    mv bash-completion $out/etc/bash_completion.d
  '';
  homepage = "http://www.haskell.org/cabal/";
  description = "The command-line interface for Cabal and Hackage";
  license = stdenv.lib.licenses.bsd3;
}
