{ stdenv, buildGoPackage, fetchzip }:

buildGoPackage rec {
  name = "puma-dev-${version}";
  version = "0.15";
  goPackagePath = "github.com/puma/puma-dev";

  src = fetchzip {
    url = "https://github.com/puma/puma-dev/archive/v${version}.tar.gz";
    sha256 = "sha256-B3hBlMOYiapC3HOTvAAfSp0NYMrppVkuGW9yjkWPXgM=";
  };

  goDeps = ./deps.nix;

  # darwin only package, breaks the linux build.
  preBuild = stdenv.lib.optionalString stdenv.isLinux ''
    rm -rv go/src/$goPackagePath/dev/launch
  '';

  meta = with stdenv.lib; {
    maintainers = [ maintainers.lnl7 ];
    platforms = platforms.darwin ++ platforms.linux;
  };
}
