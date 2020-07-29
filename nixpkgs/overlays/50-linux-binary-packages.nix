self: super:

{
  lnl = super.lnl or {} // {
    vault-bin = super.callPackage
      ({ stdenv, fetchurl, unzip }:
       stdenv.mkDerivation rec {
         name = "vault-${version}";
         version = "1.5.0";
         src = fetchurl {
           url = "https://releases.hashicorp.com/vault/${version}/vault_${version}_linux_amd64.zip";
           sha256 = "183kpk6pf978hl54v3cvwmhsiwqs8sgxzqgrqlgp3i21w6p968rj";
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
