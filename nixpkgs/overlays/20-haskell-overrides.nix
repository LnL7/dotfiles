self: super:

with super.lib;
with super.haskell.lib;

let
  haskellExecutables = mapAttrs (_: justStaticExecutables) self.haskellPackages;
in

{
  haskellPackages = super.haskellPackages.override {
    overrides = self: super: {
      # halive = dontCheck (unmarkBroken (overrideCabal super.halive (drv: {
      #   postPatch = drv.postPatch or ''
      #     substituteInPlace halive.cabal \
      #         --replace -dynamic ""
      #   '';
      # })));

      cabal-install_2_4_0_0 = justStaticExecutables (doJailbreak (super.callPackage ../pkgs/cabal-install/2.4.0.0.nix {
        inherit (super) Cabal;
      }));
    };
  };

  lnl = super.lnl or {} // {
    inherit (haskellExecutables) halive hnix hoogle hpack shake;

    ghcide = toDerivation /nix/store/79djjphzc3jvvlwrmsxfynncyc1akwza-ghcide-0.0.6-exe-ghcide;
    hie = toDerivation /nix/store/ljyv7pnsw4q0i4zrmmzayhfdg5sx7fmi-haskell-ide-engine-ghc865-1.0.0.0;
  };
}
