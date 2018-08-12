self: super:

{
  lnl = super.lnl or {} // {
    # TODO: add chunkwm to nixpkgs. (CoreFoundation 10.11)
    chunkwm = super.callPackage
      ({ runCommandNoCC }:
       runCommandNoCC "chunkwm-0.0.0" {} ''
         mkdir -p $out/bin $out/libexec/chunkwm $out/lib/chunkwm/plugins
         ln -s /src/chunkwm/src/chunkc/bin/chunkc $out/bin
         ln -s /src/chunkwm/bin/chunkwm $out/libexec/chunkwm
         ln -s /src/chunkwm/plugins/*.so $out/lib/chunkwm/plugins
       '') {};

    # TODO: fix darwin build in nixpkgs.
    kitty = super.callPackage
      ({ runCommandNoCC }:
       runCommandNoCC "kitty" {} ''
         mkdir -p $out/bin
         ln -s /Applications/Kitty.app/Contents/MacOS/kitty $out/bin
       '') {};
  };
}

