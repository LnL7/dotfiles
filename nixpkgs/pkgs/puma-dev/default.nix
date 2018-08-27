{ stdenv, buildGoPackage, fetchzip }:

buildGoPackage rec {
  name = "puma-dev-${version}";
  version = "0.12";
  goPackagePath = "github.com/puma/puma-dev";
  src = fetchzip {
    url = "https://github.com/puma/puma-dev/archive/v${version}.tar.gz";
    sha256 = "01g1cwhdzff99k71d6r519j4fsjggcjb1iicc23ls3znfvibd7li";
  };

  meta = with stdenv.lib; {
    maintainers = [ maintainers.lnl7 ];
  };
}
