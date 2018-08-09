self: super:

{
  lnl = super.lnl or {} // {
    vault = super.callPackage
      ({ stdenv, fetchurl, unzip }:
       stdenv.mkDerivation {
         name = "vault-0.10.4";
         src = fetchurl {
           url = https://releases.hashicorp.com/vault/0.10.4/vault_0.10.4_linux_amd64.zip;
           sha256 = "0fpi31mpnvy22g8a1383pf8h1ar0lsyxi8ywgnfjs6rgiwpadj5k";
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
