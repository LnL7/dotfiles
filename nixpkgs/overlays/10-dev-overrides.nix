self: super:

let
  nixTrunk = super.nixUnstable.overrideAttrs (drv: rec {
    name = "nix-${version}";
    version = "${builtins.readFile "${src}/.version"}${versionSuffix}";
    versionSuffix = "pre${toString src.revCount}.${src.shortRev}";
    src = builtins.fetchGit { url = /src/nix; ref = "lnl7-wip"; };
  });
in

with import ../lib/versions.nix;

{
  # Before fork segfault /nix/store/znxwms4zx6fx2phlzwz1ka7x6m0fjj30-nix-2.2pre6526_9f99d624
  nixUnstable = outdated nixTrunk super.nixUnstable;

  vimPlugins = super.vimPlugins or {} // {
    vim-nix = super.vimPlugins.vim-nix.overrideAttrs (drv: rec {
      name = "vim-nix-0.1.0pre${toString src.revCount}.${src.shortRev}";
      src = builtins.fetchGit /src/vim-nix;
    });
  };
}
