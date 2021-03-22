{ lib, stdenv, fetchurl, Carbon }:

stdenv.mkDerivation {
  name = "setledsmac-2020-04-04";
  src = fetchurl {
    url = "https://github.com/damieng/setledsmac/archive/3448b18a6a76cd05c26d3e7ac7d86a35387a85cf.tar.gz";
    sha256 = "1x78q4j69agp3h1982nn3ypkwxs980wj7yw82w32xhi5sri1ni17";
  };
  buildInputs = [ Carbon ];

  makeFlags = [ "-C" "Source/SetLEDs" ];

  installPhase = ''
    mkdir -p $out/bin
    cp Source/SetLEDs/setleds $out/bin
  '';

  meta = with lib; {
    description = "Set your keyboard LEDs from the Mac OS X command-line";
    homepage = "https://github.com/damieng/setledsmac";
    platforms = platforms.darwin;
    license = licenses.gpl2;
  };
}
