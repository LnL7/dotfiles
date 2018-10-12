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

    chunkwm = super.callPackage
      ({ stdenv, fetchzip, CommandLineTools }:
       stdenv.mkDerivation rec {
         name = "chunkwm-${version}";
         version = "0.4.6";
         src = fetchzip {
           url = "http://github.com/koekeishiya/chunkwm/archive/v${version}.tar.gz";
           sha256 = "0hqgdj1jsn1xwbj70izflqhvqnr4rk7mfzmgbnspdlassk3cbf78";
         };
         outputs = [ "bin" "out" ];
         nativeBuildInputs = [ CommandLineTools ];  # impure
         makeTarget = [ "install" ];
         buildPhase = ''
           for d in . src/chunkc src/plugins/*; do
               pushd $d
               buildPhase
               popd
           done
         '';
         installPhase = ''
           mkdir -p $bin/bin $out/bin $out/lib/chunkwm/plugins
           cp src/chunkc/bin/chunkc $bin/bin/chunkc
           cp bin/chunkwm $out/bin
           cp plugins/*.so $out/lib/chunkwm/plugins
         '';
         preferLocalBuild = true;  # impure
       }) { inherit (self.lnl) CommandLineTools; };

    # TODO: fix darwin build in nixpkgs.
    kitty = super.callPackage
      ({ runCommandNoCC }:
       runCommandNoCC "kitty" {} ''
         mkdir -p $out/bin
         ln -s /Applications/Kitty.app/Contents/MacOS/kitty $out/bin
       '') {};
  };
}
