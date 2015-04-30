{ mkDerivation, async, base, Cabal, containers, data-default
, deepseq, directory, djinn-ghc, doctest, emacs, filepath, ghc
, ghc-paths, ghc-syb-utils, haskell-src-exts, hlint, hspec
, io-choice, makeWrapper, monad-control, monad-journal, mtl
, old-time, pretty, process, split, stdenv, syb, temporary, text
, time, transformers, transformers-base
}:
mkDerivation {
  pname = "ghc-mod";
  version = "5.2.1.2";
  sha256 = "11wnrdb6blw169w6kd49ax9h1r9qkka5329lmdhimvki8amv8riv";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    async base Cabal containers data-default deepseq directory
    djinn-ghc filepath ghc ghc-paths ghc-syb-utils haskell-src-exts
    hlint io-choice monad-control monad-journal mtl old-time pretty
    process split syb temporary text time transformers
    transformers-base
  ];
  testDepends = [
    base Cabal containers deepseq directory djinn-ghc doctest filepath
    ghc ghc-paths ghc-syb-utils haskell-src-exts hlint hspec io-choice
    monad-control monad-journal mtl old-time pretty process split syb
    temporary text time transformers transformers-base
  ];
  buildTools = [ emacs makeWrapper ];
  configureFlags = "--datasubdir=ghc-mod-5.2.1.2";
  postInstall = ''
    cd $out/share/ghc-mod-5.2.1.2
    make
    rm Makefile
    cd ..
    ensureDir "$out/share/emacs"
    mv ghc-mod-5.2.1.2 emacs/site-lisp
  '';
  homepage = "http://www.mew.org/~kazu/proj/ghc-mod/";
  description = "Happy Haskell Programming";
  license = stdenv.lib.licenses.bsd3;
}
