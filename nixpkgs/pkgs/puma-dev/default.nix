{ stdenv, buildGoPackage, fetchzip }:

let
  fsevents = fetchzip {
    url = "https://github.com/fsnotify/fsevents/archive/f721bd2b045774a566e8f7f5fa2a9985e04c875d.tar.gz";
    sha256 = "05i0h6zvrczw3vzg6nd9aab3k9ny1zldb7xrg832jcd3xafkr63s";
  };
in

buildGoPackage rec {
  name = "puma-dev-${version}";
  version = "0.12";
  goPackagePath = "github.com/puma/puma-dev";

  src = fetchzip {
    url = "https://github.com/puma/puma-dev/archive/v${version}.tar.gz";
    sha256 = "01g1cwhdzff99k71d6r519j4fsjggcjb1iicc23ls3znfvibd7li";
  };

  # darwin only package, breaks the linux build.
  preBuild = stdenv.lib.optionalString stdenv.isLinux ''
    rm -rv go/src/$goPackagePath/dev/launch
  ''
  # update fsevents
  + stdenv.lib.optionalString stdenv.isDarwin ''
    rm -r go/src/$goPackagePath/vendor/github.com/fsnotify/fsevents
    ln -s ${fsevents} go/src/$goPackagePath/vendor/github.com/fsnotify/fsevents
  '';

  meta = with stdenv.lib; {
    maintainers = [ maintainers.lnl7 ];
    platforms = platforms.darwin ++ platforms.linux;
  };
}
