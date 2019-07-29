self: super:

{
  lnl = super.lnl or {} // {
    CommandLineTools = super.callPackage
      ({ makeSetupHook }:
       makeSetupHook {} (builtins.toFile "CommandLineTools" ''
         addCommandLineTools() {
             echo >&2
             echo "WARNING: this is impure and unreliable, make sure the CommandLineTools are installed!" >&2
             echo "  $ xcode-select --install" >&2
             echo >&2
             [ -d /Library/Developer/CommandLineTools/usr/bin ]
             export PATH=/usr/bin:/Library/Developer/CommandLineTools/usr/bin:$PATH
         }

         prePhases+=" addCommandLineTools"
       '')) {};

    # TODO: fix darwin build in nixpkgs.
    kitty = super.callPackage
      ({ runCommandNoCC }:
       runCommandNoCC "kitty" {} ''
         mkdir -p $out/bin
         ln -s /Applications/Kitty.app/Contents/MacOS/kitty $out/bin
       '') {};
  };
}
