self: super:

let
  CommandLineTools = "/Library/Developer/CommandLineTools";
in

{
  lnl = super.lnl or {} // {
    swift = super.stdenv.mkDerivation {
      name = "swift-CommandLineTools-0.0.0";
      phases = [ "installPhase" "fixupPhase" ];

      propagatedBuildInputs = [ self.darwin.DarwinTools ];

      installPhase = ''
          mkdir -p $out/bin $out/lib
          ln -s ${CommandLineTools}/usr/bin/swift $out/bin
          ln -s ${CommandLineTools}/usr/lib/swift $out/lib
          ln -s ${CommandLineTools}/SDKs $out
      '';

      setupHook = builtins.toFile "hook" ''
          addCommandLineTools() {
              echo >&2
              echo "WARNING: this is impure and unreliable, make sure the CommandLineTools are installed!" >&2
              echo "  $ xcode-select --install" >&2
              echo >&2
              [ -d ${CommandLineTools} ]
              export NIX_LDFLAGS+=" -L@out@/lib/swift/macosx"
              export SWIFT=swift
              export SWIFT_LIB_DYNAMIC=@out@/lib/swift/macosx
              export MACOS_SDK_VERSION=$(sw_vers -productVersion | awk -F. '{print $1 "." $2}')
              export MACOS_SDK=@out@/SDKs/MacOSX$MACOS_SDK_VERSION.sdk
          }

          prePhases+=" addCommandLineTools"
      '';

      __impureHostDeps = [ CommandLineTools ];
    };

    mpv = super.mpv.override { swiftSupport = true; inherit (self.lnl) swift; };
  };
}
