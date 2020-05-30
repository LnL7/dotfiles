self: super:

# let
#   nix = super.lib.toDerivation <nix-out> // { version = "2.4pre"; };
# in

with import ../lib/versions.nix;

{
  # nixUnstable = outdated nix super.nixUnstable;

  # vimPlugins = super.vimPlugins or {} // {
  #   vim-nix = super.vimPlugins.vim-nix.overrideAttrs (drv: rec {
  #     name = "vim-nix-2019git${toString src.revCount}.${src.shortRev}";
  #     src = builtins.fetchGit /src/vim-nix;
  #   });
  # };

  # lnl = super.lnl or {} // {
  #   elixir-ls = super.lib.toDerivation <elixir-ls-out>;
  # };
}
