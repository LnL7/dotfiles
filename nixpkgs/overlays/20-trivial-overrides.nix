self: super:

{
  vim_configurable = super.vim_configurable.override {
    ftNixSupport = false;  # enable using a custom vim-nix
  };
}
