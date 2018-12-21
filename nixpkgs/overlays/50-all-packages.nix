self: super:

let
  inherit (super) callPackage darwin;
in

{
  lnl = super.lnl or {} // {

    dev-tld-resolver = callPackage ../pkgs/dev-tld-resolver { };
    puma-dev = callPackage ../pkgs/puma-dev { };

    pam_reattach = callPackage ../pkgs/pam_reattach {
      inherit (darwin.apple_sdk.libs) xpc;
    };

  };
}
