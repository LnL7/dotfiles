self: super:

{
  lnl = super.lnl or {} // {
    darwinpkgs = super.callPackage
     ({ writeTextFile }:
       writeTextFile {
         name = "darwinpkgs";
         destination = "/default.nix";
         text = ''
           { ... }@args: (import <darwin> args).pkgs
         '';
       }) {};

    nixospkgs = super.callPackage
     ({ writeTextFile }:
       writeTextFile {
         name = "nixospkgs";
         destination = "/default.nix";
         text = ''
           { ... }@args: (import <nixos/nixos> args).pkgs
         '';
       }) {};
  };
}
