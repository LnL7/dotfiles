self: super:

{
  vim_configurable = super.vim_configurable.override {
    guiSupport = "no";
    ftNixSupport = false;  # enable using a custom vim-nix
  };
}
