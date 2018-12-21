self: super:

with import ../lib/versions.nix;

{
  # nixUnstable = outdated (super.nixUnstable.overrideAttrs (drv: rec {
  #   name = "nix-${builtins.readFile /src/nix/version}pre${toString src.revCount}.${src.shortRev}";
  #   src = builtins.fetchGit { url = /src/nix; rev = "0659a190fb497b8d80ac3b9525f99cf41c00b04f"; };
  #   buildInputs = drv.buildInputs or [] ++ [ super.editline ];
  # })) super.nixUnstable;

  vimPlugins = super.vimPlugins or {} // {
    vim-nix = super.vimPlugins.vim-nix.overrideAttrs (drv: rec {
      name = "vim-nix-0.1.0pre${toString src.revCount}.${src.shortRev}";
      src = builtins.fetchGit /src/vim-nix;
    });
  };
}
