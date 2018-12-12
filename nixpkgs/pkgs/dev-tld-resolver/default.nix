{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  name = "dev-tld-resolver-2016-05-31";

  src = fetchFromGitHub {
    owner = "puma";
    repo = "dev-tld-resolver";
    rev = "5a4c19e11f67a1f5886b9a8198c8eb326955e324";
    sha256 = "0r1rq5qgfc0079dyvpb8ncxnkcs24j76y73bvx455wi4vbc2kpcq";
  };

  sourceRoot = "source/src";

  installPhase = ''
    mkdir -p $out/lib
    cp libnss_dev_tld.so.2 $out/lib
  '';
}
