self: super:

{
  lnl = super.lnl or {} // {

    puma-dev = super.callPackage ../pkgs/puma-dev {};

  };
}
