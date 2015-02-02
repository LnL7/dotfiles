# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, filepath, httpTypes, mtl, text, wai }:

cabal.mkDerivation (self: {
  pname = "wai-middleware-static";
  version = "0.6.0.1";
  sha256 = "1ylf2nm535d3dw0ksa9dfz1b4b78mqzkdrpdfd5pxswcqbgs266d";
  buildDepends = [ filepath httpTypes mtl text wai ];
  meta = {
    homepage = "https://github.com/scotty-web/wai-middleware-static";
    description = "WAI middleware that serves requests to static files";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
