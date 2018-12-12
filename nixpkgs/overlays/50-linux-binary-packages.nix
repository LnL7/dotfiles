self: super:

{
  lnl = super.lnl or {} // {
    vault = super.callPackage
      ({ stdenv, fetchurl, unzip }:
       stdenv.mkDerivation rec {
         name = "vault-${version}";
         version = "1.0.0";
         src = fetchurl {
           url = "https://releases.hashicorp.com/vault/${version}/vault_${version}_linux_amd64.zip";
           sha256 = "19la7qawyxh95pf515chky66p7rp3cgysizizfm4dszbs93vdbvm";
         };
         strictDeps = true;
         nativeBuildInputs = [ unzip ];
         sourceRoot = ".";
         installPhase = ''
           mkdir -p $out/bin
           cp vault $out/bin
         '';
       }) {};
  };
}
