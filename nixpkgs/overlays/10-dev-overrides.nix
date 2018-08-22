self: super:

{
  # nixUnstable = super.nixUnstable.overrideAttrs (drv: rec {
  #   name = "nix-2.1pre${toString src.revCount}.${src.shortRev}";
  #   src = builtins.fetchGit /src/nix;
  # });

  vimPlugins = super.vimPlugins or {} // {
    vim-nix = super.vimPlugins.vim-nix.overrideAttrs (drv: rec {
      name = "vim-nix-0.1.0pre${toString src.revCount}.${src.shortRev}";
      src = builtins.fetchGit /src/vim-nix;
    });
  };

  puma = super.callPackage
    ({ buildGoPackage, fetchzip }:
     buildGoPackage rec {
       name = "puma-${version}";
       version = "0.12";
       goPackagePath = "github.com/puma/puma-dev";
       src = fetchzip {
         url = "https://github.com/puma/puma-dev/archive/v${version}.tar.gz";
         sha256 = "01g1cwhdzff99k71d6r519j4fsjggcjb1iicc23ls3znfvibd7li";
       };
     }) { };
}
