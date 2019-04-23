self: super:

let
  inherit (super) callPackage darwin;
in

{
  lnl = super.lnl or {} // {

    dev-tld-resolver = callPackage ../pkgs/dev-tld-resolver { };
    elixir-ls = callPackage ../pkgs/elixir-ls { };
    puma = callPackage ../pkgs/puma { };

    puma-dev = callPackage ../pkgs/puma-dev {
      buildGoPackage = super.buildGo110Package;
    };

    pam_reattach = callPackage ../pkgs/pam_reattach {
      inherit (darwin.apple_sdk.libs) xpc;
    };

  };
}
