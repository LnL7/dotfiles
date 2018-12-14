self: super:

let
  darwin = import (builtins.fetchTarball {
    url = https://releases.nixos.org/nixpkgs/18.09-darwin/nixpkgs-darwin-18.09pre153235.5e425e22a75/nixexprs.tar.xz;
    sha256 = "0rp35bbg81ypk730m7znkgdh5ys7qyny1g1i6bq6m1b8lgjwx5jd";
  }) {};

  nixos = import (builtins.fetchTarball {
    url = https://releases.nixos.org/nixos/18.09/nixos-18.09.1676.7e88992a8c7/nixexprs.tar.xz;
    sha256 = "1s9si0g0zyh13c66p2hx3knayy1v06fs19y996x0bl78cf1mwd9g";
  }) {};

  nixpkgs = import (builtins.fetchTarball {
    url = https://releases.nixos.org/nixpkgs/nixpkgs-19.03pre161900.61c3169a0e1/nixexprs.tar.xz;
    sha256 = "1lpiz70ms155hbpy6dqiqqsmyz9lwm47s7ydcqrfj0ldxc1yagj9";
  }) {};
in

{
  channels = super.channels or {} // {
    stable = if super.stdenv.isDarwin then darwin else nixos;
    unstable = nixpkgs;
  };
}
