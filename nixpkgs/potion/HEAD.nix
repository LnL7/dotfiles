{ fetchgit, stdenv, autoconf, automake, libtool, git, perl, rsync
, gnutar, gzip, gnumake, binutils, coreutils, gawk, gnused, gnugrep, patchelf, findutils
}:

stdenv.mkDerivation ({
  name = "potion-HEAD";
  src = fetchgit {
    url = https://github.com/perl11/potion.git;
    rev = "1344d942b39045d29cbae32343dd97549cdf4b75";
    sha256 = "18dx8id3si1ajgwrb7pc4gr7sgbqabpy61zxcgff0il3jq61jfgl";
    leaveDotGit = true;
  };

  patchPhase = "sed -e 's/\${SUDO} //' -i dist.mak";
  configurePhase = "./configure PREFIX=$out";
  buildPhase = "make LIBTOOLIZE=libtoolize";
  installPhase = ''
    mkdir -p $prefix;
    make install BINDIST='pkg/''${PKGBIN}.tar.gz';
  '';

  baseInputs = [gnutar gzip gnumake binutils coreutils gawk gnused gnugrep patchelf findutils];
  buildInputs = [autoconf automake libtool git perl rsync];
})
