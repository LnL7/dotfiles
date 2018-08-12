self: super:

{
  lnl = super.lnl or {} // {
    # TODO: fix darwin build in nixpkgs.
    kitty = super.callPackage
      ({ runCommandNoCC }:
       runCommandNoCC "kitty" {} ''
         mkdir -p $out/bin
         ln -s /Applications/Kitty.app/Contents/MacOS/kitty $out/bin
       '') {};
  };
}

