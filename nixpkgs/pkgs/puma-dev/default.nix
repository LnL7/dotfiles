{ lib, stdenv, buildGoPackage, fetchzip }:

buildGoPackage rec {
  name = "puma-dev-${version}";
  version = "0.18.2";
  goPackagePath = "github.com/puma/puma-dev";

  src = fetchzip {
    url = "https://github.com/puma/puma-dev/archive/v${version}.tar.gz";
    sha256 = "sha256-lEaPNRr/NTMFuT/FTsoy8UXK0eRXQy9sgCwAa1ZkiQs=";
  };

  goDeps = ./deps.nix;

  # darwin only package, breaks the linux build.
  preBuild = lib.optionalString stdenv.isLinux ''
    rm -rv go/src/$goPackagePath/dev/launch
  '';

  meta = with lib; {
    maintainers = [ maintainers.lnl7 ];
    platforms = platforms.darwin ++ platforms.linux;
  };
}
