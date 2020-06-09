self: super:

let inherit (super) fetchpatch; in

{
  nixUnstable = super.nixUnstable.overrideAttrs (drv: {
    patches = drv.patches or [] ++ [
      (fetchpatch {
        url = "https://github.com/LnL7/nix/commit/1b16fd36472c32e70a94d6f35f284cf0e234f065.patch";
        sha256 = "1gzxs6dp4k02685wzvskwvmzz3jcd6jxq2ys3jbd8ssmn98pw31g";
      })
    ];
  });

  vim_configurable = super.vim_configurable.override {
    ftNixSupport = false;  # enable using a custom vim-nix
  };
}
