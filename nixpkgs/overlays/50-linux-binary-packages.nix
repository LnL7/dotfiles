self: super:

{
  lnl = super.lnl or {} // {
    vault-bin = super.callPackage
      ({ stdenv, fetchurl, unzip }:
       stdenv.mkDerivation rec {
         name = "vault-${version}";
         version = "1.4.2";
         src = fetchurl {
           url = "https://releases.hashicorp.com/vault/${version}/vault_${version}_linux_amd64.zip";
           sha256 = "1wdqj29l3rzzaf2bl4f470rv05n35i2wjfxhbqk111zvpyfaig7j";
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
