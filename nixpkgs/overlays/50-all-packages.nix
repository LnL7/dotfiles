self: super:

let
  inherit (super) callPackage darwin;
in

{
  lnl = super.lnl or {} // {

    compileCommandsCC = callPackage ../pkgs/compile-commands-cc { };
    dev-tld-resolver = callPackage ../pkgs/dev-tld-resolver { };
    elixir-ls = callPackage ../pkgs/elixir-ls { };
    letty = callPackage ../pkgs/letty {
      inherit (super.darwin.apple_sdk.frameworks) IOKit;
    };
    puma = callPackage ../pkgs/puma { };
    puma-dev = callPackage ../pkgs/puma-dev { };

    pam_reattach = callPackage ../pkgs/pam_reattach {
      inherit (darwin.apple_sdk.libs) xpc;
    };

    setledsmac = callPackage ../pkgs/setledsmac {
      inherit (super.darwin.apple_sdk.frameworks) Carbon;
    };
  };
}
