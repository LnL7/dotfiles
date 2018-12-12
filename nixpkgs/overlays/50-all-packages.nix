self: super:

{
  lnl = super.lnl or {} // {

    dev-tld-resolver = super.callPackage ../pkgs/dev-tld-resolver { };
    puma-dev = super.callPackage ../pkgs/puma-dev { };

  };
}
