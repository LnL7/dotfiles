self: super:

{
  lnl = super.lnl or {} // {
    vault = super.callPackage
      ({ stdenv, fetchurl, unzip }:
       stdenv.mkDerivation {
         name = "vault-0.11.1";
         src = fetchurl {
           url = https://releases.hashicorp.com/vault/0.11.1/vault_0.11.1_linux_amd64.zip;
           sha256 = "15jrwqf58hr3x2xbkq7xrjpxx2wrjn3qfpq0j4grq96as1hj93gb";
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
