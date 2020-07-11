self: super:

let inherit (super) fetchpatch; in

{
  nixUnstable = super.nixUnstable.overrideAttrs (drv: {
    patches = drv.patches or [] ++ [
    ];
  });

  vim_configurable = super.vim_configurable.override {
    ftNixSupport = false;  # enable using a custom vim-nix
  };
}
