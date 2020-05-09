{ rustPlatform, stdenv, fetchzip, IOKit }:

rustPlatform.buildRustPackage {
  name = "letty-0.0.1";

  src = fetchzip {
    url = "https://github.com/LnL7/letty/archive/372be41dda29b059fef0e82720f887e92581c5c5.tar.gz";
    sha256 = "0bcy38xcajb0y6hbwz9kfh70pjsinldkp56d3963b601lw1bz91m";
  };

  cargoSha256 = "0v9paqyx9krv2mhcikxymgqr3kn3zmp5ijfz7k55jqfc6qa0cc1x";

  buildInputs = [ IOKit ];

  meta = with stdenv.lib; {
    platforms = platforms.darwin;
  };
}
