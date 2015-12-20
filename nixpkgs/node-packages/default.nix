{ self, fetchurl, fetchgit ? null, lib }:

{
  by-spec."babel"."*" =
    self.by-version."babel"."6.3.13";
  by-version."babel"."6.3.13" = self.buildNodePackage {
    name = "babel-6.3.13";
    version = "6.3.13";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel/-/babel-6.3.13.tgz";
      name = "babel-6.3.13.tgz";
      sha1 = "9a366ce93cb24f620714c15144225c0aed37e39a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "babel" = self.by-version."babel"."6.3.13";
}
