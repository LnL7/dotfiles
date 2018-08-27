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
}
