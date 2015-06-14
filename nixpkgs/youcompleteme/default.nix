{ stdenv, fetchgit, bash, cmake, python, llvmPackages }:

stdenv.mkDerivation {
  name = "youcompleteme-2015-05-29";
  src = fetchgit {
    url = "git://github.com/valloric/youcompleteme";
    rev = "c2d962dddb4cc86f771722e9775d2345d31fe8bb";
    sha256 = "2543d42662e99401ac8b4ff938fe5452b6d0215befc155e9b24590533a4bfe06";
  };
  dependencies = [];
  buildInputs = [
    python cmake
    llvmPackages.clang llvmPackages.llvm
  ];

  configurePhase = ":";

  buildPhase = ''
    patchShebangs .

    mkdir -p $out
    cp -a ./ $out

    mkdir $out/build
    cd $out/build
    cmake -G "Unix Makefiles" . $out/third_party/ycmd/cpp -DPYTHON_LIBRARIES:PATH=${python}/lib/libpython2.7.so -DPYTHON_INCLUDE_DIR:PATH=${python}/include/python2.7 -DUSE_CLANG_COMPLETER=ON -DUSE_SYSTEM_LIBCLANG=ON
    make ycm_support_libs -j''${NIX_BUILD_CORES} -l''${NIX_BUILD_CORES}}
    ${bash}/bin/bash $out/install.sh --clang-completer --system-libclang
  '';

  # TODO: implement proper install phase rather than keeping everything in store
  # TODO: support llvm based C completion, See README of git repository
  installPhase = ":";

  meta = {
    description = "Fastest non utf-8 aware word and C completion engine for Vim";
    homepage = http://github.com/Valloric/YouCompleteMe;
    license = stdenv.lib.licenses.gpl3;
    maintainers = with stdenv.lib.maintainers; [marcweber jagajaga];
    platforms = stdenv.lib.platforms.linux;
  };
}
