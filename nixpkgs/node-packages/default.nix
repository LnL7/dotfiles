{ self, fetchurl, fetchgit ? null, lib }:

{
  by-spec."abbrev"."1" =
    self.by-version."abbrev"."1.0.7";
  by-version."abbrev"."1.0.7" = self.buildNodePackage {
    name = "abbrev-1.0.7";
    version = "1.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/abbrev/-/abbrev-1.0.7.tgz";
      name = "abbrev-1.0.7.tgz";
      sha1 = "5b6035b2ee9d4fb5cf859f08a9be81b208491843";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."accepts"."~1.2.9" =
    self.by-version."accepts"."1.2.9";
  by-version."accepts"."1.2.9" = self.buildNodePackage {
    name = "accepts-1.2.9";
    version = "1.2.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/accepts/-/accepts-1.2.9.tgz";
      name = "accepts-1.2.9.tgz";
      sha1 = "76e9631d05e3ff192a34afb9389f7b3953ded001";
    };
    deps = {
      "mime-types-2.1.1" = self.by-version."mime-types"."2.1.1";
      "negotiator-0.5.3" = self.by-version."negotiator"."0.5.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."acorn"."^1.0.3" =
    self.by-version."acorn"."1.2.2";
  by-version."acorn"."1.2.2" = self.buildNodePackage {
    name = "acorn-1.2.2";
    version = "1.2.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/acorn/-/acorn-1.2.2.tgz";
      name = "acorn-1.2.2.tgz";
      sha1 = "c8ce27de0acc76d896d2b1fad3df588d9e82f014";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."acorn-jsx"."^1.0.0" =
    self.by-version."acorn-jsx"."1.0.3";
  by-version."acorn-jsx"."1.0.3" = self.buildNodePackage {
    name = "acorn-jsx-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/acorn-jsx/-/acorn-jsx-1.0.3.tgz";
      name = "acorn-jsx-1.0.3.tgz";
      sha1 = "88bdad2b6141d70c6d2941f161e882da6f16aa7d";
    };
    deps = {
      "acorn-1.2.2" = self.by-version."acorn"."1.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."after"."0.8.1" =
    self.by-version."after"."0.8.1";
  by-version."after"."0.8.1" = self.buildNodePackage {
    name = "after-0.8.1";
    version = "0.8.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/after/-/after-0.8.1.tgz";
      name = "after-0.8.1.tgz";
      sha1 = "ab5d4fb883f596816d3515f8f791c0af486dd627";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."alter"."~0.2.0" =
    self.by-version."alter"."0.2.0";
  by-version."alter"."0.2.0" = self.buildNodePackage {
    name = "alter-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/alter/-/alter-0.2.0.tgz";
      name = "alter-0.2.0.tgz";
      sha1 = "c7588808617572034aae62480af26b1d4d1cb3cd";
    };
    deps = {
      "stable-0.1.5" = self.by-version."stable"."0.1.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."amdefine".">=0.0.4" =
    self.by-version."amdefine"."0.1.1";
  by-version."amdefine"."0.1.1" = self.buildNodePackage {
    name = "amdefine-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/amdefine/-/amdefine-0.1.1.tgz";
      name = "amdefine-0.1.1.tgz";
      sha1 = "b5c75c532052dccd6a39c0064c772c8d57a06cd2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."angular"."^1.3.11" =
    self.by-version."angular"."1.4.1";
  by-version."angular"."1.4.1" = self.buildNodePackage {
    name = "angular-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/angular/-/angular-1.4.1.tgz";
      name = "angular-1.4.1.tgz";
      sha1 = "21af170852707c732560aad3ec18e90ddf7c8f26";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."angular-route"."^1.3.8" =
    self.by-version."angular-route"."1.4.1";
  by-version."angular-route"."1.4.1" = self.buildNodePackage {
    name = "angular-route-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/angular-route/-/angular-route-1.4.1.tgz";
      name = "angular-route-1.4.1.tgz";
      sha1 = "1dd9cfdbb615abd806b4b82a0cc22fd405014c5d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."angular-sanitize"."^1.3.11" =
    self.by-version."angular-sanitize"."1.4.1";
  by-version."angular-sanitize"."1.4.1" = self.buildNodePackage {
    name = "angular-sanitize-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/angular-sanitize/-/angular-sanitize-1.4.1.tgz";
      name = "angular-sanitize-1.4.1.tgz";
      sha1 = "aec7dfd46e831e23df8f93f71d13d6aff022c966";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."angular-touch"."^1.3.11" =
    self.by-version."angular-touch"."1.4.1";
  by-version."angular-touch"."1.4.1" = self.buildNodePackage {
    name = "angular-touch-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/angular-touch/-/angular-touch-1.4.1.tgz";
      name = "angular-touch-1.4.1.tgz";
      sha1 = "743c9be7ca7a3aba6857ac00e4591a720d067e14";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-regex"."^0.2.0" =
    self.by-version."ansi-regex"."0.2.1";
  by-version."ansi-regex"."0.2.1" = self.buildNodePackage {
    name = "ansi-regex-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-regex/-/ansi-regex-0.2.1.tgz";
      name = "ansi-regex-0.2.1.tgz";
      sha1 = "0d8e946967a3d8143f93e24e298525fc1b2235f9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-regex"."^0.2.1" =
    self.by-version."ansi-regex"."0.2.1";
  by-spec."ansi-regex"."^1.0.0" =
    self.by-version."ansi-regex"."1.1.1";
  by-version."ansi-regex"."1.1.1" = self.buildNodePackage {
    name = "ansi-regex-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-regex/-/ansi-regex-1.1.1.tgz";
      name = "ansi-regex-1.1.1.tgz";
      sha1 = "41c847194646375e6a1a5d10c3ca054ef9fc980d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-regex"."^1.1.0" =
    self.by-version."ansi-regex"."1.1.1";
  by-spec."ansi-styles"."^1.1.0" =
    self.by-version."ansi-styles"."1.1.0";
  by-version."ansi-styles"."1.1.0" = self.buildNodePackage {
    name = "ansi-styles-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-styles/-/ansi-styles-1.1.0.tgz";
      name = "ansi-styles-1.1.0.tgz";
      sha1 = "eaecbf66cd706882760b2f4691582b8f55d7a7de";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-styles"."^2.0.1" =
    self.by-version."ansi-styles"."2.0.1";
  by-version."ansi-styles"."2.0.1" = self.buildNodePackage {
    name = "ansi-styles-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-styles/-/ansi-styles-2.0.1.tgz";
      name = "ansi-styles-2.0.1.tgz";
      sha1 = "b033f57f93e2d28adeb8bc11138fa13da0fd20a3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."anymatch"."^1.1.0" =
    self.by-version."anymatch"."1.3.0";
  by-version."anymatch"."1.3.0" = self.buildNodePackage {
    name = "anymatch-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/anymatch/-/anymatch-1.3.0.tgz";
      name = "anymatch-1.3.0.tgz";
      sha1 = "a3e52fa39168c825ff57b0248126ce5a8ff95507";
    };
    deps = {
      "arrify-1.0.0" = self.by-version."arrify"."1.0.0";
      "micromatch-2.1.6" = self.by-version."micromatch"."2.1.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."anymatch"."^1.3.0" =
    self.by-version."anymatch"."1.3.0";
  by-spec."arr-diff"."^1.0.1" =
    self.by-version."arr-diff"."1.0.1";
  by-version."arr-diff"."1.0.1" = self.buildNodePackage {
    name = "arr-diff-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/arr-diff/-/arr-diff-1.0.1.tgz";
      name = "arr-diff-1.0.1.tgz";
      sha1 = "0b766ed5b26b242212febe9cbf2024a8d0349f6d";
    };
    deps = {
      "array-slice-0.2.3" = self.by-version."array-slice"."0.2.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."array-slice"."^0.2.2" =
    self.by-version."array-slice"."0.2.3";
  by-version."array-slice"."0.2.3" = self.buildNodePackage {
    name = "array-slice-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-slice/-/array-slice-0.2.3.tgz";
      name = "array-slice-0.2.3.tgz";
      sha1 = "dd3cfb80ed7973a75117cdac69b0b99ec86186f5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."arraybuffer.slice"."0.0.6" =
    self.by-version."arraybuffer.slice"."0.0.6";
  by-version."arraybuffer.slice"."0.0.6" = self.buildNodePackage {
    name = "arraybuffer.slice-0.0.6";
    version = "0.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/arraybuffer.slice/-/arraybuffer.slice-0.0.6.tgz";
      name = "arraybuffer.slice-0.0.6.tgz";
      sha1 = "f33b2159f0532a3f3107a272c0ccfbd1ad2979ca";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."arrify"."^1.0.0" =
    self.by-version."arrify"."1.0.0";
  by-version."arrify"."1.0.0" = self.buildNodePackage {
    name = "arrify-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/arrify/-/arrify-1.0.0.tgz";
      name = "arrify-1.0.0.tgz";
      sha1 = "d6c361518250802fa2147ea7fb67597128cb8c81";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ast-traverse"."~0.1.1" =
    self.by-version."ast-traverse"."0.1.1";
  by-version."ast-traverse"."0.1.1" = self.buildNodePackage {
    name = "ast-traverse-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ast-traverse/-/ast-traverse-0.1.1.tgz";
      name = "ast-traverse-0.1.1.tgz";
      sha1 = "69cf2b8386f19dcda1bb1e05d68fe359d8897de6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ast-types"."~0.7.0" =
    self.by-version."ast-types"."0.7.6";
  by-version."ast-types"."0.7.6" = self.buildNodePackage {
    name = "ast-types-0.7.6";
    version = "0.7.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ast-types/-/ast-types-0.7.6.tgz";
      name = "ast-types-0.7.6.tgz";
      sha1 = "e37945547f5d4ea954abf9400bc1b01ce79e47a5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async"."0.1.15" =
    self.by-version."async"."0.1.15";
  by-version."async"."0.1.15" = self.buildNodePackage {
    name = "async-0.1.15";
    version = "0.1.15";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-0.1.15.tgz";
      name = "async-0.1.15.tgz";
      sha1 = "2180eaca2cf2a6ca5280d41c0585bec9b3e49bd3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async"."~0.2.7" =
    self.by-version."async"."0.2.10";
  by-version."async"."0.2.10" = self.buildNodePackage {
    name = "async-0.2.10";
    version = "0.2.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-0.2.10.tgz";
      name = "async-0.2.10.tgz";
      sha1 = "b6bbe0b0674b9d719708ca38de8c237cb526c3d1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async-each"."^0.1.5" =
    self.by-version."async-each"."0.1.6";
  by-version."async-each"."0.1.6" = self.buildNodePackage {
    name = "async-each-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async-each/-/async-each-0.1.6.tgz";
      name = "async-each-0.1.6.tgz";
      sha1 = "b67e99edcddf96541e44af56290cd7d5c6e70439";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async-each-series"."^0.1.1" =
    self.by-version."async-each-series"."0.1.1";
  by-version."async-each-series"."0.1.1" = self.buildNodePackage {
    name = "async-each-series-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async-each-series/-/async-each-series-0.1.1.tgz";
      name = "async-each-series-0.1.1.tgz";
      sha1 = "7617c1917401fd8ca4a28aadce3dbae98afeb432";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel"."*" =
    self.by-version."babel"."5.6.4";
  by-version."babel"."5.6.4" = self.buildNodePackage {
    name = "babel-5.6.4";
    version = "5.6.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel/-/babel-5.6.4.tgz";
      name = "babel-5.6.4.tgz";
      sha1 = "c9a17e7070f0c65b84d5069744f9c9826c2338db";
    };
    deps = {
      "babel-core-5.6.4" = self.by-version."babel-core"."5.6.4";
      "chokidar-1.0.3" = self.by-version."chokidar"."1.0.3";
      "commander-2.8.1" = self.by-version."commander"."2.8.1";
      "convert-source-map-1.1.1" = self.by-version."convert-source-map"."1.1.1";
      "fs-readdir-recursive-0.1.2" = self.by-version."fs-readdir-recursive"."0.1.2";
      "glob-5.0.10" = self.by-version."glob"."5.0.10";
      "lodash-3.9.3" = self.by-version."lodash"."3.9.3";
      "output-file-sync-1.1.1" = self.by-version."output-file-sync"."1.1.1";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
      "source-map-0.4.2" = self.by-version."source-map"."0.4.2";
      "slash-1.0.0" = self.by-version."slash"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "babel" = self.by-version."babel"."5.6.4";
  by-spec."babel-core"."^5.6.4" =
    self.by-version."babel-core"."5.6.4";
  by-version."babel-core"."5.6.4" = self.buildNodePackage {
    name = "babel-core-5.6.4";
    version = "5.6.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-core/-/babel-core-5.6.4.tgz";
      name = "babel-core-5.6.4.tgz";
      sha1 = "5c40a4f4900f914a2b793e26eea0403a6ffdb29e";
    };
    deps = {
      "acorn-jsx-1.0.3" = self.by-version."acorn-jsx"."1.0.3";
      "ast-types-0.7.6" = self.by-version."ast-types"."0.7.6";
      "babel-plugin-constant-folding-1.0.1" = self.by-version."babel-plugin-constant-folding"."1.0.1";
      "babel-plugin-dead-code-elimination-1.0.1" = self.by-version."babel-plugin-dead-code-elimination"."1.0.1";
      "babel-plugin-eval-1.0.1" = self.by-version."babel-plugin-eval"."1.0.1";
      "babel-plugin-inline-environment-variables-1.0.1" = self.by-version."babel-plugin-inline-environment-variables"."1.0.1";
      "babel-plugin-jscript-1.0.1" = self.by-version."babel-plugin-jscript"."1.0.1";
      "babel-plugin-member-expression-literals-1.0.1" = self.by-version."babel-plugin-member-expression-literals"."1.0.1";
      "babel-plugin-property-literals-1.0.1" = self.by-version."babel-plugin-property-literals"."1.0.1";
      "babel-plugin-proto-to-assign-1.0.3" = self.by-version."babel-plugin-proto-to-assign"."1.0.3";
      "babel-plugin-react-constant-elements-1.0.3" = self.by-version."babel-plugin-react-constant-elements"."1.0.3";
      "babel-plugin-react-display-name-1.0.3" = self.by-version."babel-plugin-react-display-name"."1.0.3";
      "babel-plugin-remove-console-1.0.1" = self.by-version."babel-plugin-remove-console"."1.0.1";
      "babel-plugin-remove-debugger-1.0.1" = self.by-version."babel-plugin-remove-debugger"."1.0.1";
      "babel-plugin-runtime-1.0.7" = self.by-version."babel-plugin-runtime"."1.0.7";
      "babel-plugin-undeclared-variables-check-1.0.2" = self.by-version."babel-plugin-undeclared-variables-check"."1.0.2";
      "babel-plugin-undefined-to-void-1.1.6" = self.by-version."babel-plugin-undefined-to-void"."1.1.6";
      "chalk-1.0.0" = self.by-version."chalk"."1.0.0";
      "convert-source-map-1.1.1" = self.by-version."convert-source-map"."1.1.1";
      "core-js-0.9.18" = self.by-version."core-js"."0.9.18";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "detect-indent-3.0.1" = self.by-version."detect-indent"."3.0.1";
      "estraverse-4.1.0" = self.by-version."estraverse"."4.1.0";
      "esutils-2.0.2" = self.by-version."esutils"."2.0.2";
      "fs-readdir-recursive-0.1.2" = self.by-version."fs-readdir-recursive"."0.1.2";
      "globals-6.4.1" = self.by-version."globals"."6.4.1";
      "home-or-tmp-1.0.0" = self.by-version."home-or-tmp"."1.0.0";
      "is-integer-1.0.4" = self.by-version."is-integer"."1.0.4";
      "js-tokens-1.0.1" = self.by-version."js-tokens"."1.0.1";
      "leven-1.0.2" = self.by-version."leven"."1.0.2";
      "line-numbers-0.2.0" = self.by-version."line-numbers"."0.2.0";
      "lodash-3.9.3" = self.by-version."lodash"."3.9.3";
      "minimatch-2.0.8" = self.by-version."minimatch"."2.0.8";
      "output-file-sync-1.1.1" = self.by-version."output-file-sync"."1.1.1";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
      "private-0.1.6" = self.by-version."private"."0.1.6";
      "regenerator-0.8.30" = self.by-version."regenerator"."0.8.30";
      "regexpu-1.2.0" = self.by-version."regexpu"."1.2.0";
      "repeating-1.1.3" = self.by-version."repeating"."1.1.3";
      "resolve-1.1.6" = self.by-version."resolve"."1.1.6";
      "shebang-regex-1.0.0" = self.by-version."shebang-regex"."1.0.0";
      "slash-1.0.0" = self.by-version."slash"."1.0.0";
      "source-map-0.4.2" = self.by-version."source-map"."0.4.2";
      "source-map-support-0.2.10" = self.by-version."source-map-support"."0.2.10";
      "strip-json-comments-1.0.2" = self.by-version."strip-json-comments"."1.0.2";
      "to-fast-properties-1.0.1" = self.by-version."to-fast-properties"."1.0.1";
      "trim-right-1.0.0" = self.by-version."trim-right"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-constant-folding"."^1.0.1" =
    self.by-version."babel-plugin-constant-folding"."1.0.1";
  by-version."babel-plugin-constant-folding"."1.0.1" = self.buildNodePackage {
    name = "babel-plugin-constant-folding-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-constant-folding/-/babel-plugin-constant-folding-1.0.1.tgz";
      name = "babel-plugin-constant-folding-1.0.1.tgz";
      sha1 = "8361d364c98e449c3692bdba51eff0844290aa8e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-dead-code-elimination"."^1.0.1" =
    self.by-version."babel-plugin-dead-code-elimination"."1.0.1";
  by-version."babel-plugin-dead-code-elimination"."1.0.1" = self.buildNodePackage {
    name = "babel-plugin-dead-code-elimination-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-dead-code-elimination/-/babel-plugin-dead-code-elimination-1.0.1.tgz";
      name = "babel-plugin-dead-code-elimination-1.0.1.tgz";
      sha1 = "5ab1f9617df6eecfaef94edc5da79a194d07042c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-eval"."^1.0.1" =
    self.by-version."babel-plugin-eval"."1.0.1";
  by-version."babel-plugin-eval"."1.0.1" = self.buildNodePackage {
    name = "babel-plugin-eval-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-eval/-/babel-plugin-eval-1.0.1.tgz";
      name = "babel-plugin-eval-1.0.1.tgz";
      sha1 = "a2faed25ce6be69ade4bfec263f70169195950da";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-inline-environment-variables"."^1.0.1" =
    self.by-version."babel-plugin-inline-environment-variables"."1.0.1";
  by-version."babel-plugin-inline-environment-variables"."1.0.1" = self.buildNodePackage {
    name = "babel-plugin-inline-environment-variables-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-inline-environment-variables/-/babel-plugin-inline-environment-variables-1.0.1.tgz";
      name = "babel-plugin-inline-environment-variables-1.0.1.tgz";
      sha1 = "1f58ce91207ad6a826a8bf645fafe68ff5fe3ffe";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-jscript"."^1.0.1" =
    self.by-version."babel-plugin-jscript"."1.0.1";
  by-version."babel-plugin-jscript"."1.0.1" = self.buildNodePackage {
    name = "babel-plugin-jscript-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-jscript/-/babel-plugin-jscript-1.0.1.tgz";
      name = "babel-plugin-jscript-1.0.1.tgz";
      sha1 = "83ef00fb24690b604eb9fd8d023dc839ee7a9f5b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-member-expression-literals"."^1.0.1" =
    self.by-version."babel-plugin-member-expression-literals"."1.0.1";
  by-version."babel-plugin-member-expression-literals"."1.0.1" = self.buildNodePackage {
    name = "babel-plugin-member-expression-literals-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-member-expression-literals/-/babel-plugin-member-expression-literals-1.0.1.tgz";
      name = "babel-plugin-member-expression-literals-1.0.1.tgz";
      sha1 = "cc5edb0faa8dc927170e74d6d1c02440021624d3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-property-literals"."^1.0.1" =
    self.by-version."babel-plugin-property-literals"."1.0.1";
  by-version."babel-plugin-property-literals"."1.0.1" = self.buildNodePackage {
    name = "babel-plugin-property-literals-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-property-literals/-/babel-plugin-property-literals-1.0.1.tgz";
      name = "babel-plugin-property-literals-1.0.1.tgz";
      sha1 = "0252301900192980b1c118efea48ce93aab83336";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-proto-to-assign"."^1.0.3" =
    self.by-version."babel-plugin-proto-to-assign"."1.0.3";
  by-version."babel-plugin-proto-to-assign"."1.0.3" = self.buildNodePackage {
    name = "babel-plugin-proto-to-assign-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-proto-to-assign/-/babel-plugin-proto-to-assign-1.0.3.tgz";
      name = "babel-plugin-proto-to-assign-1.0.3.tgz";
      sha1 = "afacc149cc9ec4324b9a8f93fede2cd1a6b9a0dc";
    };
    deps = {
      "lodash-3.9.3" = self.by-version."lodash"."3.9.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-react-constant-elements"."^1.0.3" =
    self.by-version."babel-plugin-react-constant-elements"."1.0.3";
  by-version."babel-plugin-react-constant-elements"."1.0.3" = self.buildNodePackage {
    name = "babel-plugin-react-constant-elements-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-react-constant-elements/-/babel-plugin-react-constant-elements-1.0.3.tgz";
      name = "babel-plugin-react-constant-elements-1.0.3.tgz";
      sha1 = "946736e8378429cbc349dcff62f51c143b34e35a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-react-display-name"."^1.0.3" =
    self.by-version."babel-plugin-react-display-name"."1.0.3";
  by-version."babel-plugin-react-display-name"."1.0.3" = self.buildNodePackage {
    name = "babel-plugin-react-display-name-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-react-display-name/-/babel-plugin-react-display-name-1.0.3.tgz";
      name = "babel-plugin-react-display-name-1.0.3.tgz";
      sha1 = "754fe38926e8424a4e7b15ab6ea6139dee0514fc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-remove-console"."^1.0.1" =
    self.by-version."babel-plugin-remove-console"."1.0.1";
  by-version."babel-plugin-remove-console"."1.0.1" = self.buildNodePackage {
    name = "babel-plugin-remove-console-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-remove-console/-/babel-plugin-remove-console-1.0.1.tgz";
      name = "babel-plugin-remove-console-1.0.1.tgz";
      sha1 = "d8f24556c3a05005d42aaaafd27787f53ff013a7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-remove-debugger"."^1.0.1" =
    self.by-version."babel-plugin-remove-debugger"."1.0.1";
  by-version."babel-plugin-remove-debugger"."1.0.1" = self.buildNodePackage {
    name = "babel-plugin-remove-debugger-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-remove-debugger/-/babel-plugin-remove-debugger-1.0.1.tgz";
      name = "babel-plugin-remove-debugger-1.0.1.tgz";
      sha1 = "fd2ea3cd61a428ad1f3b9c89882ff4293e8c14c7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-runtime"."^1.0.7" =
    self.by-version."babel-plugin-runtime"."1.0.7";
  by-version."babel-plugin-runtime"."1.0.7" = self.buildNodePackage {
    name = "babel-plugin-runtime-1.0.7";
    version = "1.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-runtime/-/babel-plugin-runtime-1.0.7.tgz";
      name = "babel-plugin-runtime-1.0.7.tgz";
      sha1 = "bf7c7d966dd56ecd5c17fa1cb253c9acb7e54aaf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-undeclared-variables-check"."^1.0.2" =
    self.by-version."babel-plugin-undeclared-variables-check"."1.0.2";
  by-version."babel-plugin-undeclared-variables-check"."1.0.2" = self.buildNodePackage {
    name = "babel-plugin-undeclared-variables-check-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-undeclared-variables-check/-/babel-plugin-undeclared-variables-check-1.0.2.tgz";
      name = "babel-plugin-undeclared-variables-check-1.0.2.tgz";
      sha1 = "5cf1aa539d813ff64e99641290af620965f65dee";
    };
    deps = {
      "leven-1.0.2" = self.by-version."leven"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-undefined-to-void"."^1.1.6" =
    self.by-version."babel-plugin-undefined-to-void"."1.1.6";
  by-version."babel-plugin-undefined-to-void"."1.1.6" = self.buildNodePackage {
    name = "babel-plugin-undefined-to-void-1.1.6";
    version = "1.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/babel-plugin-undefined-to-void/-/babel-plugin-undefined-to-void-1.1.6.tgz";
      name = "babel-plugin-undefined-to-void-1.1.6.tgz";
      sha1 = "7f578ef8b78dfae6003385d8417a61eda06e2f81";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."backo2"."1.0.2" =
    self.by-version."backo2"."1.0.2";
  by-version."backo2"."1.0.2" = self.buildNodePackage {
    name = "backo2-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/backo2/-/backo2-1.0.2.tgz";
      name = "backo2-1.0.2.tgz";
      sha1 = "31ab1ac8b129363463e35b3ebb69f4dfcfba7947";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."balanced-match"."^0.2.0" =
    self.by-version."balanced-match"."0.2.0";
  by-version."balanced-match"."0.2.0" = self.buildNodePackage {
    name = "balanced-match-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/balanced-match/-/balanced-match-0.2.0.tgz";
      name = "balanced-match-0.2.0.tgz";
      sha1 = "38f6730c03aab6d5edbb52bd934885e756d71674";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."base64-arraybuffer"."0.1.2" =
    self.by-version."base64-arraybuffer"."0.1.2";
  by-version."base64-arraybuffer"."0.1.2" = self.buildNodePackage {
    name = "base64-arraybuffer-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/base64-arraybuffer/-/base64-arraybuffer-0.1.2.tgz";
      name = "base64-arraybuffer-0.1.2.tgz";
      sha1 = "474df4a9f2da24e05df3158c3b1db3c3cd46a154";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."base64id"."0.1.0" =
    self.by-version."base64id"."0.1.0";
  by-version."base64id"."0.1.0" = self.buildNodePackage {
    name = "base64id-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/base64id/-/base64id-0.1.0.tgz";
      name = "base64id-0.1.0.tgz";
      sha1 = "02ce0fdeee0cef4f40080e1e73e834f0b1bfce3f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."batch"."0.5.2" =
    self.by-version."batch"."0.5.2";
  by-version."batch"."0.5.2" = self.buildNodePackage {
    name = "batch-0.5.2";
    version = "0.5.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/batch/-/batch-0.5.2.tgz";
      name = "batch-0.5.2.tgz";
      sha1 = "546543dbe32118c83c7c7ca33a1f5c5d5ea963e9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."benchmark"."1.0.0" =
    self.by-version."benchmark"."1.0.0";
  by-version."benchmark"."1.0.0" = self.buildNodePackage {
    name = "benchmark-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/benchmark/-/benchmark-1.0.0.tgz";
      name = "benchmark-1.0.0.tgz";
      sha1 = "2f1e2fa4c359f11122aa183082218e957e390c73";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."better-assert"."~1.0.0" =
    self.by-version."better-assert"."1.0.2";
  by-version."better-assert"."1.0.2" = self.buildNodePackage {
    name = "better-assert-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/better-assert/-/better-assert-1.0.2.tgz";
      name = "better-assert-1.0.2.tgz";
      sha1 = "40866b9e1b9e0b55b481894311e68faffaebc522";
    };
    deps = {
      "callsite-1.0.0" = self.by-version."callsite"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."binary-extensions"."^1.0.0" =
    self.by-version."binary-extensions"."1.3.1";
  by-version."binary-extensions"."1.3.1" = self.buildNodePackage {
    name = "binary-extensions-1.3.1";
    version = "1.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/binary-extensions/-/binary-extensions-1.3.1.tgz";
      name = "binary-extensions-1.3.1.tgz";
      sha1 = "32dd9ed2a7c69acec56f77f6cd80df043f78777a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."blob"."0.0.2" =
    self.by-version."blob"."0.0.2";
  by-version."blob"."0.0.2" = self.buildNodePackage {
    name = "blob-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/blob/-/blob-0.0.2.tgz";
      name = "blob-0.0.2.tgz";
      sha1 = "b89562bd6994af95ba1e812155536333aa23cf24";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."brace-expansion"."^1.0.0" =
    self.by-version."brace-expansion"."1.1.0";
  by-version."brace-expansion"."1.1.0" = self.buildNodePackage {
    name = "brace-expansion-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.0.tgz";
      name = "brace-expansion-1.1.0.tgz";
      sha1 = "c9b7d03c03f37bc704be100e522b40db8f6cfcd9";
    };
    deps = {
      "balanced-match-0.2.0" = self.by-version."balanced-match"."0.2.0";
      "concat-map-0.0.1" = self.by-version."concat-map"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."braces"."^1.8.0" =
    self.by-version."braces"."1.8.0";
  by-version."braces"."1.8.0" = self.buildNodePackage {
    name = "braces-1.8.0";
    version = "1.8.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/braces/-/braces-1.8.0.tgz";
      name = "braces-1.8.0.tgz";
      sha1 = "3a4a005aae0391817c17b074dca8f08e6fc9e4c4";
    };
    deps = {
      "expand-range-1.8.1" = self.by-version."expand-range"."1.8.1";
      "preserve-0.2.0" = self.by-version."preserve"."0.2.0";
      "repeat-element-1.1.2" = self.by-version."repeat-element"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."breakable"."~1.0.0" =
    self.by-version."breakable"."1.0.0";
  by-version."breakable"."1.0.0" = self.buildNodePackage {
    name = "breakable-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/breakable/-/breakable-1.0.0.tgz";
      name = "breakable-1.0.0.tgz";
      sha1 = "784a797915a38ead27bad456b5572cb4bbaa78c1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browser-sync"."*" =
    self.by-version."browser-sync"."2.7.12";
  by-version."browser-sync"."2.7.12" = self.buildNodePackage {
    name = "browser-sync-2.7.12";
    version = "2.7.12";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/browser-sync/-/browser-sync-2.7.12.tgz";
      name = "browser-sync-2.7.12.tgz";
      sha1 = "a7ab309f636f6c549b24edac6ab10678fd5c6a46";
    };
    deps = {
      "anymatch-1.3.0" = self.by-version."anymatch"."1.3.0";
      "async-each-series-0.1.1" = self.by-version."async-each-series"."0.1.1";
      "browser-sync-client-2.2.1" = self.by-version."browser-sync-client"."2.2.1";
      "browser-sync-ui-0.5.11" = self.by-version."browser-sync-ui"."0.5.11";
      "chokidar-1.0.3" = self.by-version."chokidar"."1.0.3";
      "connect-3.4.0" = self.by-version."connect"."3.4.0";
      "dev-ip-1.0.1" = self.by-version."dev-ip"."1.0.1";
      "easy-extender-2.3.1" = self.by-version."easy-extender"."2.3.1";
      "eazy-logger-2.1.2" = self.by-version."eazy-logger"."2.1.2";
      "emitter-steward-0.0.1" = self.by-version."emitter-steward"."0.0.1";
      "foxy-11.0.3" = self.by-version."foxy"."11.0.3";
      "immutable-3.7.4" = self.by-version."immutable"."3.7.4";
      "localtunnel-1.5.1" = self.by-version."localtunnel"."1.5.1";
      "lodash-3.9.3" = self.by-version."lodash"."3.9.3";
      "longest-1.0.1" = self.by-version."longest"."1.0.1";
      "meow-3.3.0" = self.by-version."meow"."3.3.0";
      "opn-2.0.1" = self.by-version."opn"."2.0.1";
      "pad-left-1.0.2" = self.by-version."pad-left"."1.0.2";
      "portscanner-1.0.0" = self.by-version."portscanner"."1.0.0";
      "query-string-2.3.0" = self.by-version."query-string"."2.3.0";
      "resp-modifier-4.0.2" = self.by-version."resp-modifier"."4.0.2";
      "serve-index-1.7.0" = self.by-version."serve-index"."1.7.0";
      "serve-static-1.10.0" = self.by-version."serve-static"."1.10.0";
      "socket.io-1.3.5" = self.by-version."socket.io"."1.3.5";
      "ua-parser-js-0.7.7" = self.by-version."ua-parser-js"."0.7.7";
      "ucfirst-0.0.1" = self.by-version."ucfirst"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "browser-sync" = self.by-version."browser-sync"."2.7.12";
  by-spec."browser-sync-client"."^2.2.1" =
    self.by-version."browser-sync-client"."2.2.1";
  by-version."browser-sync-client"."2.2.1" = self.buildNodePackage {
    name = "browser-sync-client-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/browser-sync-client/-/browser-sync-client-2.2.1.tgz";
      name = "browser-sync-client-2.2.1.tgz";
      sha1 = "7f94e692928a500622c96558d0904fb2724c8634";
    };
    deps = {
      "etag-1.7.0" = self.by-version."etag"."1.7.0";
      "fresh-0.3.0" = self.by-version."fresh"."0.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browser-sync-ui"."^0.5.9" =
    self.by-version."browser-sync-ui"."0.5.11";
  by-version."browser-sync-ui"."0.5.11" = self.buildNodePackage {
    name = "browser-sync-ui-0.5.11";
    version = "0.5.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/browser-sync-ui/-/browser-sync-ui-0.5.11.tgz";
      name = "browser-sync-ui-0.5.11.tgz";
      sha1 = "88dfeeaad009ce86a2767bde77beb2e22a7967ba";
    };
    deps = {
      "angular-1.4.1" = self.by-version."angular"."1.4.1";
      "angular-route-1.4.1" = self.by-version."angular-route"."1.4.1";
      "angular-sanitize-1.4.1" = self.by-version."angular-sanitize"."1.4.1";
      "angular-touch-1.4.1" = self.by-version."angular-touch"."1.4.1";
      "async-each-series-0.1.1" = self.by-version."async-each-series"."0.1.1";
      "connect-history-api-fallback-0.0.5" = self.by-version."connect-history-api-fallback"."0.0.5";
      "immutable-3.7.4" = self.by-version."immutable"."3.7.4";
      "stream-throttle-0.1.3" = self.by-version."stream-throttle"."0.1.3";
      "weinre-2.0.0-pre-I0Z7U9OV" = self.by-version."weinre"."2.0.0-pre-I0Z7U9OV";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."callsite"."1.0.0" =
    self.by-version."callsite"."1.0.0";
  by-version."callsite"."1.0.0" = self.buildNodePackage {
    name = "callsite-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/callsite/-/callsite-1.0.0.tgz";
      name = "callsite-1.0.0.tgz";
      sha1 = "280398e5d664bd74038b6f0905153e6e8af1bc20";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."camelcase"."^1.0.1" =
    self.by-version."camelcase"."1.1.0";
  by-version."camelcase"."1.1.0" = self.buildNodePackage {
    name = "camelcase-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/camelcase/-/camelcase-1.1.0.tgz";
      name = "camelcase-1.1.0.tgz";
      sha1 = "953b25c3bc98671ee59a44cb9d542672da7331b9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."camelcase-keys"."^1.0.0" =
    self.by-version."camelcase-keys"."1.0.0";
  by-version."camelcase-keys"."1.0.0" = self.buildNodePackage {
    name = "camelcase-keys-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/camelcase-keys/-/camelcase-keys-1.0.0.tgz";
      name = "camelcase-keys-1.0.0.tgz";
      sha1 = "bd1a11bf9b31a1ce493493a930de1a0baf4ad7ec";
    };
    deps = {
      "camelcase-1.1.0" = self.by-version."camelcase"."1.1.0";
      "map-obj-1.0.1" = self.by-version."map-obj"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chalk"."^0.5.1" =
    self.by-version."chalk"."0.5.1";
  by-version."chalk"."0.5.1" = self.buildNodePackage {
    name = "chalk-0.5.1";
    version = "0.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chalk/-/chalk-0.5.1.tgz";
      name = "chalk-0.5.1.tgz";
      sha1 = "663b3a648b68b55d04690d49167aa837858f2174";
    };
    deps = {
      "ansi-styles-1.1.0" = self.by-version."ansi-styles"."1.1.0";
      "escape-string-regexp-1.0.3" = self.by-version."escape-string-regexp"."1.0.3";
      "has-ansi-0.1.0" = self.by-version."has-ansi"."0.1.0";
      "strip-ansi-0.3.0" = self.by-version."strip-ansi"."0.3.0";
      "supports-color-0.2.0" = self.by-version."supports-color"."0.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chalk"."^1.0.0" =
    self.by-version."chalk"."1.0.0";
  by-version."chalk"."1.0.0" = self.buildNodePackage {
    name = "chalk-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chalk/-/chalk-1.0.0.tgz";
      name = "chalk-1.0.0.tgz";
      sha1 = "b3cf4ed0ff5397c99c75b8f679db2f52831f96dc";
    };
    deps = {
      "ansi-styles-2.0.1" = self.by-version."ansi-styles"."2.0.1";
      "escape-string-regexp-1.0.3" = self.by-version."escape-string-regexp"."1.0.3";
      "has-ansi-1.0.3" = self.by-version."has-ansi"."1.0.3";
      "strip-ansi-2.0.1" = self.by-version."strip-ansi"."2.0.1";
      "supports-color-1.3.1" = self.by-version."supports-color"."1.3.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chokidar"."^1.0.0" =
    self.by-version."chokidar"."1.0.3";
  by-version."chokidar"."1.0.3" = self.buildNodePackage {
    name = "chokidar-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chokidar/-/chokidar-1.0.3.tgz";
      name = "chokidar-1.0.3.tgz";
      sha1 = "ba63580caeb89bbdf869eab51bbca4f3ca441be8";
    };
    deps = {
      "anymatch-1.3.0" = self.by-version."anymatch"."1.3.0";
      "arrify-1.0.0" = self.by-version."arrify"."1.0.0";
      "async-each-0.1.6" = self.by-version."async-each"."0.1.6";
      "glob-parent-1.2.0" = self.by-version."glob-parent"."1.2.0";
      "is-binary-path-1.0.1" = self.by-version."is-binary-path"."1.0.1";
      "is-glob-1.1.3" = self.by-version."is-glob"."1.1.3";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
      "readdirp-1.3.0" = self.by-version."readdirp"."1.3.0";
    };
    optionalDependencies = {
      "fsevents-0.3.6" = self.by-version."fsevents"."0.3.6";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chokidar"."^1.0.3" =
    self.by-version."chokidar"."1.0.3";
  by-spec."combined-stream"."~0.0.4" =
    self.by-version."combined-stream"."0.0.7";
  by-version."combined-stream"."0.0.7" = self.buildNodePackage {
    name = "combined-stream-0.0.7";
    version = "0.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/combined-stream/-/combined-stream-0.0.7.tgz";
      name = "combined-stream-0.0.7.tgz";
      sha1 = "0137e657baa5a7541c57ac37ac5fc07d73b4dc1f";
    };
    deps = {
      "delayed-stream-0.0.5" = self.by-version."delayed-stream"."0.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."commander"."^2.2.0" =
    self.by-version."commander"."2.8.1";
  by-version."commander"."2.8.1" = self.buildNodePackage {
    name = "commander-2.8.1";
    version = "2.8.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-2.8.1.tgz";
      name = "commander-2.8.1.tgz";
      sha1 = "06be367febfda0c330aa1e2a072d3dc9762425d4";
    };
    deps = {
      "graceful-readlink-1.0.1" = self.by-version."graceful-readlink"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."commander"."^2.6.0" =
    self.by-version."commander"."2.8.1";
  by-spec."commander"."~0.6.1" =
    self.by-version."commander"."0.6.1";
  by-version."commander"."0.6.1" = self.buildNodePackage {
    name = "commander-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-0.6.1.tgz";
      name = "commander-0.6.1.tgz";
      sha1 = "fa68a14f6a945d54dbbe50d8cdb3320e9e3b1a06";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."commander"."~2.5.0" =
    self.by-version."commander"."2.5.1";
  by-version."commander"."2.5.1" = self.buildNodePackage {
    name = "commander-2.5.1";
    version = "2.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-2.5.1.tgz";
      name = "commander-2.5.1.tgz";
      sha1 = "23c61f6e47be143cc02e7ad4bb1c47f5cd5a2883";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."commoner"."~0.10.0" =
    self.by-version."commoner"."0.10.3";
  by-version."commoner"."0.10.3" = self.buildNodePackage {
    name = "commoner-0.10.3";
    version = "0.10.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/commoner/-/commoner-0.10.3.tgz";
      name = "commoner-0.10.3.tgz";
      sha1 = "8d407fbca042d1258672998a206ec1d525c92b2a";
    };
    deps = {
      "q-1.1.2" = self.by-version."q"."1.1.2";
      "recast-0.10.12" = self.by-version."recast"."0.10.12";
      "commander-2.5.1" = self.by-version."commander"."2.5.1";
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
      "glob-4.2.2" = self.by-version."glob"."4.2.2";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "private-0.1.6" = self.by-version."private"."0.1.6";
      "install-0.1.8" = self.by-version."install"."0.1.8";
      "iconv-lite-0.4.10" = self.by-version."iconv-lite"."0.4.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."component-bind"."1.0.0" =
    self.by-version."component-bind"."1.0.0";
  by-version."component-bind"."1.0.0" = self.buildNodePackage {
    name = "component-bind-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/component-bind/-/component-bind-1.0.0.tgz";
      name = "component-bind-1.0.0.tgz";
      sha1 = "00c608ab7dcd93897c0009651b1d3a8e1e73bbd1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."component-emitter"."1.1.2" =
    self.by-version."component-emitter"."1.1.2";
  by-version."component-emitter"."1.1.2" = self.buildNodePackage {
    name = "component-emitter-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/component-emitter/-/component-emitter-1.1.2.tgz";
      name = "component-emitter-1.1.2.tgz";
      sha1 = "296594f2753daa63996d2af08d15a95116c9aec3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."component-inherit"."0.0.3" =
    self.by-version."component-inherit"."0.0.3";
  by-version."component-inherit"."0.0.3" = self.buildNodePackage {
    name = "component-inherit-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/component-inherit/-/component-inherit-0.0.3.tgz";
      name = "component-inherit-0.0.3.tgz";
      sha1 = "645fc4adf58b72b649d5cae65135619db26ff143";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."concat-map"."0.0.1" =
    self.by-version."concat-map"."0.0.1";
  by-version."concat-map"."0.0.1" = self.buildNodePackage {
    name = "concat-map-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz";
      name = "concat-map-0.0.1.tgz";
      sha1 = "d8a96bd77fd68df7793a73036a3ba0d5405d477b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."connect"."1.x" =
    self.by-version."connect"."1.9.2";
  by-version."connect"."1.9.2" = self.buildNodePackage {
    name = "connect-1.9.2";
    version = "1.9.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/connect/-/connect-1.9.2.tgz";
      name = "connect-1.9.2.tgz";
      sha1 = "42880a22e9438ae59a8add74e437f58ae8e52807";
    };
    deps = {
      "qs-3.1.0" = self.by-version."qs"."3.1.0";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "formidable-1.0.17" = self.by-version."formidable"."1.0.17";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."connect"."^3.3.5" =
    self.by-version."connect"."3.4.0";
  by-version."connect"."3.4.0" = self.buildNodePackage {
    name = "connect-3.4.0";
    version = "3.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/connect/-/connect-3.4.0.tgz";
      name = "connect-3.4.0.tgz";
      sha1 = "ee8789a3bd4604bfda39dbcf1d3bb482dfe6cf24";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "finalhandler-0.4.0" = self.by-version."finalhandler"."0.4.0";
      "parseurl-1.3.0" = self.by-version."parseurl"."1.3.0";
      "utils-merge-1.0.0" = self.by-version."utils-merge"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."connect-history-api-fallback"."0.0.5" =
    self.by-version."connect-history-api-fallback"."0.0.5";
  by-version."connect-history-api-fallback"."0.0.5" = self.buildNodePackage {
    name = "connect-history-api-fallback-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/connect-history-api-fallback/-/connect-history-api-fallback-0.0.5.tgz";
      name = "connect-history-api-fallback-0.0.5.tgz";
      sha1 = "ef0509d0040bfbc486eab5f7f500bb1769cf354a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."convert-source-map"."^1.1.0" =
    self.by-version."convert-source-map"."1.1.1";
  by-version."convert-source-map"."1.1.1" = self.buildNodePackage {
    name = "convert-source-map-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/convert-source-map/-/convert-source-map-1.1.1.tgz";
      name = "convert-source-map-1.1.1.tgz";
      sha1 = "74e5182473058413b090dd73777acbc4a0fff3cc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cookie"."^0.1.3" =
    self.by-version."cookie"."0.1.3";
  by-version."cookie"."0.1.3" = self.buildNodePackage {
    name = "cookie-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cookie/-/cookie-0.1.3.tgz";
      name = "cookie-0.1.3.tgz";
      sha1 = "e734a5c1417fce472d5aef82c381cabb64d1a435";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."core-js"."^0.9.0" =
    self.by-version."core-js"."0.9.18";
  by-version."core-js"."0.9.18" = self.buildNodePackage {
    name = "core-js-0.9.18";
    version = "0.9.18";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/core-js/-/core-js-0.9.18.tgz";
      name = "core-js-0.9.18.tgz";
      sha1 = "13f458e430232b0f4ec1f480da7c2f5288e9d095";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."core-util-is"."~1.0.0" =
    self.by-version."core-util-is"."1.0.1";
  by-version."core-util-is"."1.0.1" = self.buildNodePackage {
    name = "core-util-is-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/core-util-is/-/core-util-is-1.0.1.tgz";
      name = "core-util-is-1.0.1.tgz";
      sha1 = "6b07085aef9a3ccac6ee53bf9d3df0c1521a5538";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."0.7.4" =
    self.by-version."debug"."0.7.4";
  by-version."debug"."0.7.4" = self.buildNodePackage {
    name = "debug-0.7.4";
    version = "0.7.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-0.7.4.tgz";
      name = "debug-0.7.4.tgz";
      sha1 = "06e1ea8082c2cb14e39806e22e2f6f757f92af39";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."1.0.2" =
    self.by-version."debug"."1.0.2";
  by-version."debug"."1.0.2" = self.buildNodePackage {
    name = "debug-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-1.0.2.tgz";
      name = "debug-1.0.2.tgz";
      sha1 = "3849591c10cce648476c3c7c2e2e3416db5963c4";
    };
    deps = {
      "ms-0.6.2" = self.by-version."ms"."0.6.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."1.0.3" =
    self.by-version."debug"."1.0.3";
  by-version."debug"."1.0.3" = self.buildNodePackage {
    name = "debug-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-1.0.3.tgz";
      name = "debug-1.0.3.tgz";
      sha1 = "fc8c6b2d6002804b4081c0208e0f6460ba1fa3e4";
    };
    deps = {
      "ms-0.6.2" = self.by-version."ms"."0.6.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."1.0.4" =
    self.by-version."debug"."1.0.4";
  by-version."debug"."1.0.4" = self.buildNodePackage {
    name = "debug-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-1.0.4.tgz";
      name = "debug-1.0.4.tgz";
      sha1 = "5b9c256bd54b6ec02283176fa8a0ede6d154cbf8";
    };
    deps = {
      "ms-0.6.2" = self.by-version."ms"."0.6.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."2.1.0" =
    self.by-version."debug"."2.1.0";
  by-version."debug"."2.1.0" = self.buildNodePackage {
    name = "debug-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-2.1.0.tgz";
      name = "debug-2.1.0.tgz";
      sha1 = "33ab915659d8c2cc8a41443d94d6ebd37697ed21";
    };
    deps = {
      "ms-0.6.2" = self.by-version."ms"."0.6.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."^2.1.1" =
    self.by-version."debug"."2.2.0";
  by-version."debug"."2.2.0" = self.buildNodePackage {
    name = "debug-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-2.2.0.tgz";
      name = "debug-2.2.0.tgz";
      sha1 = "f87057e995b1a1f6ae6a4960664137bc56f039da";
    };
    deps = {
      "ms-0.7.1" = self.by-version."ms"."0.7.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."^2.1.3" =
    self.by-version."debug"."2.2.0";
  by-spec."debug"."~2.2.0" =
    self.by-version."debug"."2.2.0";
  by-spec."defs"."~1.1.0" =
    self.by-version."defs"."1.1.0";
  by-version."defs"."1.1.0" = self.buildNodePackage {
    name = "defs-1.1.0";
    version = "1.1.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/defs/-/defs-1.1.0.tgz";
      name = "defs-1.1.0.tgz";
      sha1 = "a271201acd271eb0be887eefc61edd9f89f32b49";
    };
    deps = {
      "alter-0.2.0" = self.by-version."alter"."0.2.0";
      "ast-traverse-0.1.1" = self.by-version."ast-traverse"."0.1.1";
      "breakable-1.0.0" = self.by-version."breakable"."1.0.0";
      "esprima-fb-8001.1001.0-dev-harmony-fb" = self.by-version."esprima-fb"."8001.1001.0-dev-harmony-fb";
      "simple-fmt-0.1.0" = self.by-version."simple-fmt"."0.1.0";
      "simple-is-0.2.0" = self.by-version."simple-is"."0.2.0";
      "stringmap-0.2.2" = self.by-version."stringmap"."0.2.2";
      "stringset-0.2.1" = self.by-version."stringset"."0.2.1";
      "tryor-0.1.2" = self.by-version."tryor"."0.1.2";
      "yargs-1.3.3" = self.by-version."yargs"."1.3.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."delayed-stream"."0.0.5" =
    self.by-version."delayed-stream"."0.0.5";
  by-version."delayed-stream"."0.0.5" = self.buildNodePackage {
    name = "delayed-stream-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/delayed-stream/-/delayed-stream-0.0.5.tgz";
      name = "delayed-stream-0.0.5.tgz";
      sha1 = "d4b1f43a93e8296dfe02694f4680bc37a313c73f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."depd"."~1.0.1" =
    self.by-version."depd"."1.0.1";
  by-version."depd"."1.0.1" = self.buildNodePackage {
    name = "depd-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/depd/-/depd-1.0.1.tgz";
      name = "depd-1.0.1.tgz";
      sha1 = "80aec64c9d6d97e65cc2a9caa93c0aa6abf73aaa";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."destroy"."1.0.3" =
    self.by-version."destroy"."1.0.3";
  by-version."destroy"."1.0.3" = self.buildNodePackage {
    name = "destroy-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/destroy/-/destroy-1.0.3.tgz";
      name = "destroy-1.0.3.tgz";
      sha1 = "b433b4724e71fd8551d9885174851c5fc377e2c9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."detect-indent"."^3.0.0" =
    self.by-version."detect-indent"."3.0.1";
  by-version."detect-indent"."3.0.1" = self.buildNodePackage {
    name = "detect-indent-3.0.1";
    version = "3.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/detect-indent/-/detect-indent-3.0.1.tgz";
      name = "detect-indent-3.0.1.tgz";
      sha1 = "9dc5e5ddbceef8325764b9451b02bc6d54084f75";
    };
    deps = {
      "get-stdin-4.0.1" = self.by-version."get-stdin"."4.0.1";
      "minimist-1.1.1" = self.by-version."minimist"."1.1.1";
      "repeating-1.1.3" = self.by-version."repeating"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."dev-ip"."^1.0.1" =
    self.by-version."dev-ip"."1.0.1";
  by-version."dev-ip"."1.0.1" = self.buildNodePackage {
    name = "dev-ip-1.0.1";
    version = "1.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/dev-ip/-/dev-ip-1.0.1.tgz";
      name = "dev-ip-1.0.1.tgz";
      sha1 = "a76a3ed1855be7a012bb8ac16cb80f3c00dc28f0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."easy-extender"."^2.3.1" =
    self.by-version."easy-extender"."2.3.1";
  by-version."easy-extender"."2.3.1" = self.buildNodePackage {
    name = "easy-extender-2.3.1";
    version = "2.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/easy-extender/-/easy-extender-2.3.1.tgz";
      name = "easy-extender-2.3.1.tgz";
      sha1 = "da9152164379f19e5d30491d967203a68a746736";
    };
    deps = {
      "lodash-2.4.2" = self.by-version."lodash"."2.4.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."eazy-logger"."^2.0.0" =
    self.by-version."eazy-logger"."2.1.2";
  by-version."eazy-logger"."2.1.2" = self.buildNodePackage {
    name = "eazy-logger-2.1.2";
    version = "2.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/eazy-logger/-/eazy-logger-2.1.2.tgz";
      name = "eazy-logger-2.1.2.tgz";
      sha1 = "7817c141aeb7f792ebc15efb703fae0507589c2d";
    };
    deps = {
      "lodash-3.9.3" = self.by-version."lodash"."3.9.3";
      "opt-merger-1.1.0" = self.by-version."opt-merger"."1.1.0";
      "tfunk-3.0.1" = self.by-version."tfunk"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."eazy-logger"."^2.1.2" =
    self.by-version."eazy-logger"."2.1.2";
  by-spec."ee-first"."1.1.1" =
    self.by-version."ee-first"."1.1.1";
  by-version."ee-first"."1.1.1" = self.buildNodePackage {
    name = "ee-first-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ee-first/-/ee-first-1.1.1.tgz";
      name = "ee-first-1.1.1.tgz";
      sha1 = "590c61156b0ae2f4f0255732a158b266bc56b21d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."emitter-steward"."^0.0.1" =
    self.by-version."emitter-steward"."0.0.1";
  by-version."emitter-steward"."0.0.1" = self.buildNodePackage {
    name = "emitter-steward-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/emitter-steward/-/emitter-steward-0.0.1.tgz";
      name = "emitter-steward-0.0.1.tgz";
      sha1 = "6ef6ef749aee6ba06c56aa98484df0a330206863";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."engine.io"."1.5.1" =
    self.by-version."engine.io"."1.5.1";
  by-version."engine.io"."1.5.1" = self.buildNodePackage {
    name = "engine.io-1.5.1";
    version = "1.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/engine.io/-/engine.io-1.5.1.tgz";
      name = "engine.io-1.5.1.tgz";
      sha1 = "8f7a4b2aadf974b71ffd185cffe1e2bdf384ddfb";
    };
    deps = {
      "debug-1.0.3" = self.by-version."debug"."1.0.3";
      "ws-0.5.0" = self.by-version."ws"."0.5.0";
      "engine.io-parser-1.2.1" = self.by-version."engine.io-parser"."1.2.1";
      "base64id-0.1.0" = self.by-version."base64id"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."engine.io-client"."1.5.1" =
    self.by-version."engine.io-client"."1.5.1";
  by-version."engine.io-client"."1.5.1" = self.buildNodePackage {
    name = "engine.io-client-1.5.1";
    version = "1.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/engine.io-client/-/engine.io-client-1.5.1.tgz";
      name = "engine.io-client-1.5.1.tgz";
      sha1 = "ecd0026d90b065169b9885960183f3d56b8da18e";
    };
    deps = {
      "has-cors-1.0.3" = self.by-version."has-cors"."1.0.3";
      "ws-0.4.31" = self.by-version."ws"."0.4.31";
      "xmlhttprequest-1.5.0" = self.by-version."xmlhttprequest"."1.5.0";
      "component-emitter-1.1.2" = self.by-version."component-emitter"."1.1.2";
      "indexof-0.0.1" = self.by-version."indexof"."0.0.1";
      "engine.io-parser-1.2.1" = self.by-version."engine.io-parser"."1.2.1";
      "debug-1.0.4" = self.by-version."debug"."1.0.4";
      "parseuri-0.0.4" = self.by-version."parseuri"."0.0.4";
      "parsejson-0.0.1" = self.by-version."parsejson"."0.0.1";
      "parseqs-0.0.2" = self.by-version."parseqs"."0.0.2";
      "component-inherit-0.0.3" = self.by-version."component-inherit"."0.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."engine.io-parser"."1.2.1" =
    self.by-version."engine.io-parser"."1.2.1";
  by-version."engine.io-parser"."1.2.1" = self.buildNodePackage {
    name = "engine.io-parser-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/engine.io-parser/-/engine.io-parser-1.2.1.tgz";
      name = "engine.io-parser-1.2.1.tgz";
      sha1 = "4462a67d0c70a907c06db2e1de53791a86f5ab37";
    };
    deps = {
      "after-0.8.1" = self.by-version."after"."0.8.1";
      "arraybuffer.slice-0.0.6" = self.by-version."arraybuffer.slice"."0.0.6";
      "base64-arraybuffer-0.1.2" = self.by-version."base64-arraybuffer"."0.1.2";
      "blob-0.0.2" = self.by-version."blob"."0.0.2";
      "has-binary-0.1.5" = self.by-version."has-binary"."0.1.5";
      "utf8-2.0.0" = self.by-version."utf8"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."escape-html"."1.0.2" =
    self.by-version."escape-html"."1.0.2";
  by-version."escape-html"."1.0.2" = self.buildNodePackage {
    name = "escape-html-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/escape-html/-/escape-html-1.0.2.tgz";
      name = "escape-html-1.0.2.tgz";
      sha1 = "d77d32fa98e38c2f41ae85e9278e0e0e6ba1022c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."escape-string-regexp"."^1.0.0" =
    self.by-version."escape-string-regexp"."1.0.3";
  by-version."escape-string-regexp"."1.0.3" = self.buildNodePackage {
    name = "escape-string-regexp-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.3.tgz";
      name = "escape-string-regexp-1.0.3.tgz";
      sha1 = "9e2d8b25bc2555c3336723750e03f099c2735bb5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."escape-string-regexp"."^1.0.2" =
    self.by-version."escape-string-regexp"."1.0.3";
  by-spec."esprima-fb"."~13001.1.0-dev-harmony-fb" =
    self.by-version."esprima-fb"."13001.1.0-dev-harmony-fb";
  by-version."esprima-fb"."13001.1.0-dev-harmony-fb" = self.buildNodePackage {
    name = "esprima-fb-13001.1.0-dev-harmony-fb";
    version = "13001.1.0-dev-harmony-fb";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/esprima-fb/-/esprima-fb-13001.1.0-dev-harmony-fb.tgz";
      name = "esprima-fb-13001.1.0-dev-harmony-fb.tgz";
      sha1 = "43a4a28f8e01c2e3bb8dfb22fd178474d4d881f5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."esprima-fb"."~14001.1.0-dev-harmony-fb" =
    self.by-version."esprima-fb"."14001.1.0-dev-harmony-fb";
  by-version."esprima-fb"."14001.1.0-dev-harmony-fb" = self.buildNodePackage {
    name = "esprima-fb-14001.1.0-dev-harmony-fb";
    version = "14001.1.0-dev-harmony-fb";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/esprima-fb/-/esprima-fb-14001.1.0-dev-harmony-fb.tgz";
      name = "esprima-fb-14001.1.0-dev-harmony-fb.tgz";
      sha1 = "9f4b99a36f45aa58e11da95c9bc9ccf25a6e958c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."esprima-fb"."~8001.1001.0-dev-harmony-fb" =
    self.by-version."esprima-fb"."8001.1001.0-dev-harmony-fb";
  by-version."esprima-fb"."8001.1001.0-dev-harmony-fb" = self.buildNodePackage {
    name = "esprima-fb-8001.1001.0-dev-harmony-fb";
    version = "8001.1001.0-dev-harmony-fb";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/esprima-fb/-/esprima-fb-8001.1001.0-dev-harmony-fb.tgz";
      name = "esprima-fb-8001.1001.0-dev-harmony-fb.tgz";
      sha1 = "c3190b05341d45643e093af70485ab4988e34d5e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."estraverse"."^4.0.0" =
    self.by-version."estraverse"."4.1.0";
  by-version."estraverse"."4.1.0" = self.buildNodePackage {
    name = "estraverse-4.1.0";
    version = "4.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/estraverse/-/estraverse-4.1.0.tgz";
      name = "estraverse-4.1.0.tgz";
      sha1 = "40f23a76092041be6467d7f235c933b670766e05";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."esutils"."^2.0.0" =
    self.by-version."esutils"."2.0.2";
  by-version."esutils"."2.0.2" = self.buildNodePackage {
    name = "esutils-2.0.2";
    version = "2.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/esutils/-/esutils-2.0.2.tgz";
      name = "esutils-2.0.2.tgz";
      sha1 = "0abf4f1caa5bcb1f7a9d8acc6dea4faaa04bac9b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."etag"."^1.7.0" =
    self.by-version."etag"."1.7.0";
  by-version."etag"."1.7.0" = self.buildNodePackage {
    name = "etag-1.7.0";
    version = "1.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/etag/-/etag-1.7.0.tgz";
      name = "etag-1.7.0.tgz";
      sha1 = "03d30b5f67dd6e632d2945d30d6652731a34d5d8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."etag"."~1.7.0" =
    self.by-version."etag"."1.7.0";
  by-spec."eventemitter3"."1.x.x" =
    self.by-version."eventemitter3"."1.1.1";
  by-version."eventemitter3"."1.1.1" = self.buildNodePackage {
    name = "eventemitter3-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/eventemitter3/-/eventemitter3-1.1.1.tgz";
      name = "eventemitter3-1.1.1.tgz";
      sha1 = "47786bdaa087caf7b1b75e73abc5c7d540158cd0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."expand-brackets"."^0.1.1" =
    self.by-version."expand-brackets"."0.1.1";
  by-version."expand-brackets"."0.1.1" = self.buildNodePackage {
    name = "expand-brackets-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/expand-brackets/-/expand-brackets-0.1.1.tgz";
      name = "expand-brackets-0.1.1.tgz";
      sha1 = "e9a1a1a1bbbac19fbf065646fe63fe51f498821f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."expand-range"."^1.8.1" =
    self.by-version."expand-range"."1.8.1";
  by-version."expand-range"."1.8.1" = self.buildNodePackage {
    name = "expand-range-1.8.1";
    version = "1.8.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/expand-range/-/expand-range-1.8.1.tgz";
      name = "expand-range-1.8.1.tgz";
      sha1 = "acbd63e56efd9139722b755f099b9db5ac1f33f6";
    };
    deps = {
      "fill-range-2.2.2" = self.by-version."fill-range"."2.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."express"."2.5.x" =
    self.by-version."express"."2.5.11";
  by-version."express"."2.5.11" = self.buildNodePackage {
    name = "express-2.5.11";
    version = "2.5.11";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/express/-/express-2.5.11.tgz";
      name = "express-2.5.11.tgz";
      sha1 = "4ce8ea1f3635e69e49f0ebb497b6a4b0a51ce6f0";
    };
    deps = {
      "connect-1.9.2" = self.by-version."connect"."1.9.2";
      "mime-1.2.4" = self.by-version."mime"."1.2.4";
      "qs-0.4.2" = self.by-version."qs"."0.4.2";
      "mkdirp-0.3.0" = self.by-version."mkdirp"."0.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."filename-regex"."^2.0.0" =
    self.by-version."filename-regex"."2.0.0";
  by-version."filename-regex"."2.0.0" = self.buildNodePackage {
    name = "filename-regex-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/filename-regex/-/filename-regex-2.0.0.tgz";
      name = "filename-regex-2.0.0.tgz";
      sha1 = "996e3e80479b98b9897f15a8a58b3d084e926775";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fill-range"."^2.1.0" =
    self.by-version."fill-range"."2.2.2";
  by-version."fill-range"."2.2.2" = self.buildNodePackage {
    name = "fill-range-2.2.2";
    version = "2.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fill-range/-/fill-range-2.2.2.tgz";
      name = "fill-range-2.2.2.tgz";
      sha1 = "2ad9d158a6a666f9fb8c9f9f05345dff68d45760";
    };
    deps = {
      "is-number-1.1.2" = self.by-version."is-number"."1.1.2";
      "isobject-1.0.0" = self.by-version."isobject"."1.0.0";
      "randomatic-1.1.0" = self.by-version."randomatic"."1.1.0";
      "repeat-element-1.1.2" = self.by-version."repeat-element"."1.1.2";
      "repeat-string-1.5.2" = self.by-version."repeat-string"."1.5.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."finalhandler"."0.4.0" =
    self.by-version."finalhandler"."0.4.0";
  by-version."finalhandler"."0.4.0" = self.buildNodePackage {
    name = "finalhandler-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/finalhandler/-/finalhandler-0.4.0.tgz";
      name = "finalhandler-0.4.0.tgz";
      sha1 = "965a52d9e8d05d2b857548541fb89b53a2497d9b";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "unpipe-1.0.0" = self.by-version."unpipe"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."for-in"."^0.1.4" =
    self.by-version."for-in"."0.1.4";
  by-version."for-in"."0.1.4" = self.buildNodePackage {
    name = "for-in-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/for-in/-/for-in-0.1.4.tgz";
      name = "for-in-0.1.4.tgz";
      sha1 = "9f5cf7b4ffc7e1ae6591a4e97b177aa59d70fb2e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."for-own"."^0.1.1" =
    self.by-version."for-own"."0.1.3";
  by-version."for-own"."0.1.3" = self.buildNodePackage {
    name = "for-own-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/for-own/-/for-own-0.1.3.tgz";
      name = "for-own-0.1.3.tgz";
      sha1 = "606444cde77c2f0a11088169e2e354eaf56e74fe";
    };
    deps = {
      "for-in-0.1.4" = self.by-version."for-in"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."form-data"."~0.0.3" =
    self.by-version."form-data"."0.0.10";
  by-version."form-data"."0.0.10" = self.buildNodePackage {
    name = "form-data-0.0.10";
    version = "0.0.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/form-data/-/form-data-0.0.10.tgz";
      name = "form-data-0.0.10.tgz";
      sha1 = "db345a5378d86aeeb1ed5d553b869ac192d2f5ed";
    };
    deps = {
      "combined-stream-0.0.7" = self.by-version."combined-stream"."0.0.7";
      "mime-1.2.11" = self.by-version."mime"."1.2.11";
      "async-0.2.10" = self.by-version."async"."0.2.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."formidable"."1.0.x" =
    self.by-version."formidable"."1.0.17";
  by-version."formidable"."1.0.17" = self.buildNodePackage {
    name = "formidable-1.0.17";
    version = "1.0.17";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/formidable/-/formidable-1.0.17.tgz";
      name = "formidable-1.0.17.tgz";
      sha1 = "ef5491490f9433b705faa77249c99029ae348559";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."foxy"."^11.0.2" =
    self.by-version."foxy"."11.0.3";
  by-version."foxy"."11.0.3" = self.buildNodePackage {
    name = "foxy-11.0.3";
    version = "11.0.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/foxy/-/foxy-11.0.3.tgz";
      name = "foxy-11.0.3.tgz";
      sha1 = "4ce2424a0f8bed47451957c02c9ee9959703aa9e";
    };
    deps = {
      "connect-3.4.0" = self.by-version."connect"."3.4.0";
      "cookie-0.1.3" = self.by-version."cookie"."0.1.3";
      "dev-ip-1.0.1" = self.by-version."dev-ip"."1.0.1";
      "eazy-logger-2.1.2" = self.by-version."eazy-logger"."2.1.2";
      "http-proxy-1.11.1" = self.by-version."http-proxy"."1.11.1";
      "lodash.merge-3.3.1" = self.by-version."lodash.merge"."3.3.1";
      "meow-3.3.0" = self.by-version."meow"."3.3.0";
      "resp-modifier-4.0.2" = self.by-version."resp-modifier"."4.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fresh"."0.3.0" =
    self.by-version."fresh"."0.3.0";
  by-version."fresh"."0.3.0" = self.buildNodePackage {
    name = "fresh-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fresh/-/fresh-0.3.0.tgz";
      name = "fresh-0.3.0.tgz";
      sha1 = "651f838e22424e7566de161d8358caa199f83d4f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fresh"."^0.3.0" =
    self.by-version."fresh"."0.3.0";
  by-spec."fs-readdir-recursive"."^0.1.0" =
    self.by-version."fs-readdir-recursive"."0.1.2";
  by-version."fs-readdir-recursive"."0.1.2" = self.buildNodePackage {
    name = "fs-readdir-recursive-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fs-readdir-recursive/-/fs-readdir-recursive-0.1.2.tgz";
      name = "fs-readdir-recursive-0.1.2.tgz";
      sha1 = "315b4fb8c1ca5b8c47defef319d073dad3568059";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fsevents"."^0.3.1" =
    self.by-version."fsevents"."0.3.6";
  by-version."fsevents"."0.3.6" = self.buildNodePackage {
    name = "fsevents-0.3.6";
    version = "0.3.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fsevents/-/fsevents-0.3.6.tgz";
      name = "fsevents-0.3.6.tgz";
      sha1 = "03f029087b5388c756ef0d6707cf3656dba95c84";
    };
    deps = {
      "nan-1.8.4" = self.by-version."nan"."1.8.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ "darwin" ];
    cpu = [ ];
  };
  by-spec."get-stdin"."^4.0.1" =
    self.by-version."get-stdin"."4.0.1";
  by-version."get-stdin"."4.0.1" = self.buildNodePackage {
    name = "get-stdin-4.0.1";
    version = "4.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/get-stdin/-/get-stdin-4.0.1.tgz";
      name = "get-stdin-4.0.1.tgz";
      sha1 = "b968c6b0a04384324902e8bf1a5df32579a450fe";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."^5.0.5" =
    self.by-version."glob"."5.0.10";
  by-version."glob"."5.0.10" = self.buildNodePackage {
    name = "glob-5.0.10";
    version = "5.0.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-5.0.10.tgz";
      name = "glob-5.0.10.tgz";
      sha1 = "3ee350319f31f352cef6899a48f6b6b7834c6899";
    };
    deps = {
      "inflight-1.0.4" = self.by-version."inflight"."1.0.4";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-2.0.8" = self.by-version."minimatch"."2.0.8";
      "once-1.3.2" = self.by-version."once"."1.3.2";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."~4.2.1" =
    self.by-version."glob"."4.2.2";
  by-version."glob"."4.2.2" = self.buildNodePackage {
    name = "glob-4.2.2";
    version = "4.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-4.2.2.tgz";
      name = "glob-4.2.2.tgz";
      sha1 = "ad2b047653a58c387e15deb43a19497f83fd2a80";
    };
    deps = {
      "inflight-1.0.4" = self.by-version."inflight"."1.0.4";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-1.0.0" = self.by-version."minimatch"."1.0.0";
      "once-1.3.2" = self.by-version."once"."1.3.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob-base"."^0.2.0" =
    self.by-version."glob-base"."0.2.0";
  by-version."glob-base"."0.2.0" = self.buildNodePackage {
    name = "glob-base-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob-base/-/glob-base-0.2.0.tgz";
      name = "glob-base-0.2.0.tgz";
      sha1 = "59d2f38c3ba2860af149b6b174512a169e9f1b3d";
    };
    deps = {
      "glob-parent-1.2.0" = self.by-version."glob-parent"."1.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob-parent"."^1.0.0" =
    self.by-version."glob-parent"."1.2.0";
  by-version."glob-parent"."1.2.0" = self.buildNodePackage {
    name = "glob-parent-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob-parent/-/glob-parent-1.2.0.tgz";
      name = "glob-parent-1.2.0.tgz";
      sha1 = "8deffabf6317db5b0f775f553fac731ecf41ded5";
    };
    deps = {
      "is-glob-1.1.3" = self.by-version."is-glob"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob-parent"."^1.2.0" =
    self.by-version."glob-parent"."1.2.0";
  by-spec."global"."https://github.com/component/global/archive/v2.0.1.tar.gz" =
    self.by-version."global"."2.0.1";
  by-version."global"."2.0.1" = self.buildNodePackage {
    name = "global-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://github.com/component/global/archive/v2.0.1.tar.gz";
      name = "global-2.0.1.tgz";
      sha256 = "42be02b7148745447f6ba21137c972ca82d2cad92d30d63bd4fc310623901785";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."globals"."^6.4.0" =
    self.by-version."globals"."6.4.1";
  by-version."globals"."6.4.1" = self.buildNodePackage {
    name = "globals-6.4.1";
    version = "6.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/globals/-/globals-6.4.1.tgz";
      name = "globals-6.4.1.tgz";
      sha1 = "8498032b3b6d1cc81eebc5f79690d8fe29fabf4f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."~2.0.0" =
    self.by-version."graceful-fs"."2.0.3";
  by-version."graceful-fs"."2.0.3" = self.buildNodePackage {
    name = "graceful-fs-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-fs/-/graceful-fs-2.0.3.tgz";
      name = "graceful-fs-2.0.3.tgz";
      sha1 = "7cd2cdb228a4a3f36e95efa6cc142de7d1a136d0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."~3.0.4" =
    self.by-version."graceful-fs"."3.0.8";
  by-version."graceful-fs"."3.0.8" = self.buildNodePackage {
    name = "graceful-fs-3.0.8";
    version = "3.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-fs/-/graceful-fs-3.0.8.tgz";
      name = "graceful-fs-3.0.8.tgz";
      sha1 = "ce813e725fa82f7e6147d51c9a5ca68270551c22";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-readlink".">= 1.0.0" =
    self.by-version."graceful-readlink"."1.0.1";
  by-version."graceful-readlink"."1.0.1" = self.buildNodePackage {
    name = "graceful-readlink-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-readlink/-/graceful-readlink-1.0.1.tgz";
      name = "graceful-readlink-1.0.1.tgz";
      sha1 = "4cafad76bc62f02fa039b2f94e9a3dd3a391a725";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-ansi"."^0.1.0" =
    self.by-version."has-ansi"."0.1.0";
  by-version."has-ansi"."0.1.0" = self.buildNodePackage {
    name = "has-ansi-0.1.0";
    version = "0.1.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-ansi/-/has-ansi-0.1.0.tgz";
      name = "has-ansi-0.1.0.tgz";
      sha1 = "84f265aae8c0e6a88a12d7022894b7568894c62e";
    };
    deps = {
      "ansi-regex-0.2.1" = self.by-version."ansi-regex"."0.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-ansi"."^1.0.3" =
    self.by-version."has-ansi"."1.0.3";
  by-version."has-ansi"."1.0.3" = self.buildNodePackage {
    name = "has-ansi-1.0.3";
    version = "1.0.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-ansi/-/has-ansi-1.0.3.tgz";
      name = "has-ansi-1.0.3.tgz";
      sha1 = "c0b5b1615d9e382b0ff67169d967b425e48ca538";
    };
    deps = {
      "ansi-regex-1.1.1" = self.by-version."ansi-regex"."1.1.1";
      "get-stdin-4.0.1" = self.by-version."get-stdin"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-binary"."0.1.5" =
    self.by-version."has-binary"."0.1.5";
  by-version."has-binary"."0.1.5" = self.buildNodePackage {
    name = "has-binary-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-binary/-/has-binary-0.1.5.tgz";
      name = "has-binary-0.1.5.tgz";
      sha1 = "95e75720ff31b72a3ba89a5b6dce082e4bc6467f";
    };
    deps = {
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-binary"."0.1.6" =
    self.by-version."has-binary"."0.1.6";
  by-version."has-binary"."0.1.6" = self.buildNodePackage {
    name = "has-binary-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-binary/-/has-binary-0.1.6.tgz";
      name = "has-binary-0.1.6.tgz";
      sha1 = "25326f39cfa4f616ad8787894e3af2cfbc7b6e10";
    };
    deps = {
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-binary-data"."0.1.3" =
    self.by-version."has-binary-data"."0.1.3";
  by-version."has-binary-data"."0.1.3" = self.buildNodePackage {
    name = "has-binary-data-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-binary-data/-/has-binary-data-0.1.3.tgz";
      name = "has-binary-data-0.1.3.tgz";
      sha1 = "8ebb18388b57f19a5231275a16fc18d51f379aae";
    };
    deps = {
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-cors"."1.0.3" =
    self.by-version."has-cors"."1.0.3";
  by-version."has-cors"."1.0.3" = self.buildNodePackage {
    name = "has-cors-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-cors/-/has-cors-1.0.3.tgz";
      name = "has-cors-1.0.3.tgz";
      sha1 = "502acb9b3104dac33dd2630eaf2f888b0baf4cb3";
    };
    deps = {
      "global-2.0.1" = self.by-version."global"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."home-or-tmp"."^1.0.0" =
    self.by-version."home-or-tmp"."1.0.0";
  by-version."home-or-tmp"."1.0.0" = self.buildNodePackage {
    name = "home-or-tmp-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/home-or-tmp/-/home-or-tmp-1.0.0.tgz";
      name = "home-or-tmp-1.0.0.tgz";
      sha1 = "4b9f1e40800c3e50c6c27f781676afcce71f3985";
    };
    deps = {
      "os-tmpdir-1.0.1" = self.by-version."os-tmpdir"."1.0.1";
      "user-home-1.1.1" = self.by-version."user-home"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-errors"."~1.3.1" =
    self.by-version."http-errors"."1.3.1";
  by-version."http-errors"."1.3.1" = self.buildNodePackage {
    name = "http-errors-1.3.1";
    version = "1.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-errors/-/http-errors-1.3.1.tgz";
      name = "http-errors-1.3.1.tgz";
      sha1 = "197e22cdebd4198585e8694ef6786197b91ed942";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "statuses-1.2.1" = self.by-version."statuses"."1.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-proxy"."^1.9.0" =
    self.by-version."http-proxy"."1.11.1";
  by-version."http-proxy"."1.11.1" = self.buildNodePackage {
    name = "http-proxy-1.11.1";
    version = "1.11.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-proxy/-/http-proxy-1.11.1.tgz";
      name = "http-proxy-1.11.1.tgz";
      sha1 = "71df55757e802d58ea810df2244019dda05ae85d";
    };
    deps = {
      "eventemitter3-1.1.1" = self.by-version."eventemitter3"."1.1.1";
      "requires-port-0.0.1" = self.by-version."requires-port"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."iconv-lite"."~0.4.5" =
    self.by-version."iconv-lite"."0.4.10";
  by-version."iconv-lite"."0.4.10" = self.buildNodePackage {
    name = "iconv-lite-0.4.10";
    version = "0.4.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/iconv-lite/-/iconv-lite-0.4.10.tgz";
      name = "iconv-lite-0.4.10.tgz";
      sha1 = "4f1a2562efd36d41c54d45c59999b590951796de";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."immutable"."^3.3.0" =
    self.by-version."immutable"."3.7.4";
  by-version."immutable"."3.7.4" = self.buildNodePackage {
    name = "immutable-3.7.4";
    version = "3.7.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/immutable/-/immutable-3.7.4.tgz";
      name = "immutable-3.7.4.tgz";
      sha1 = "40ab3ec87b4ac95e0331a6d359a4b1fa73b2ddf3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."immutable"."^3.7.3" =
    self.by-version."immutable"."3.7.4";
  by-spec."indent-string"."^1.1.0" =
    self.by-version."indent-string"."1.2.1";
  by-version."indent-string"."1.2.1" = self.buildNodePackage {
    name = "indent-string-1.2.1";
    version = "1.2.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/indent-string/-/indent-string-1.2.1.tgz";
      name = "indent-string-1.2.1.tgz";
      sha1 = "294c5930792f8bb5b14462a4aa425b94f07d3a56";
    };
    deps = {
      "get-stdin-4.0.1" = self.by-version."get-stdin"."4.0.1";
      "minimist-1.1.1" = self.by-version."minimist"."1.1.1";
      "repeating-1.1.3" = self.by-version."repeating"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."indexof"."0.0.1" =
    self.by-version."indexof"."0.0.1";
  by-version."indexof"."0.0.1" = self.buildNodePackage {
    name = "indexof-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/indexof/-/indexof-0.0.1.tgz";
      name = "indexof-0.0.1.tgz";
      sha1 = "82dc336d232b9062179d05ab3293a66059fd435d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inflight"."^1.0.4" =
    self.by-version."inflight"."1.0.4";
  by-version."inflight"."1.0.4" = self.buildNodePackage {
    name = "inflight-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inflight/-/inflight-1.0.4.tgz";
      name = "inflight-1.0.4.tgz";
      sha1 = "6cbb4521ebd51ce0ec0a936bfd7657ef7e9b172a";
    };
    deps = {
      "once-1.3.2" = self.by-version."once"."1.3.2";
      "wrappy-1.0.1" = self.by-version."wrappy"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inherits"."2" =
    self.by-version."inherits"."2.0.1";
  by-version."inherits"."2.0.1" = self.buildNodePackage {
    name = "inherits-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inherits/-/inherits-2.0.1.tgz";
      name = "inherits-2.0.1.tgz";
      sha1 = "b17d08d326b4423e568eff719f91b0b1cbdf69f1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inherits"."~2.0.1" =
    self.by-version."inherits"."2.0.1";
  by-spec."install"."~0.1.7" =
    self.by-version."install"."0.1.8";
  by-version."install"."0.1.8" = self.buildNodePackage {
    name = "install-0.1.8";
    version = "0.1.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/install/-/install-0.1.8.tgz";
      name = "install-0.1.8.tgz";
      sha1 = "9980ef93e30dfb534778d163bc86ddd472ad5fe8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-binary-path"."^1.0.0" =
    self.by-version."is-binary-path"."1.0.1";
  by-version."is-binary-path"."1.0.1" = self.buildNodePackage {
    name = "is-binary-path-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-binary-path/-/is-binary-path-1.0.1.tgz";
      name = "is-binary-path-1.0.1.tgz";
      sha1 = "75f16642b480f187a711c814161fd3a4a7655898";
    };
    deps = {
      "binary-extensions-1.3.1" = self.by-version."binary-extensions"."1.3.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-dotfile"."^1.0.0" =
    self.by-version."is-dotfile"."1.0.1";
  by-version."is-dotfile"."1.0.1" = self.buildNodePackage {
    name = "is-dotfile-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-dotfile/-/is-dotfile-1.0.1.tgz";
      name = "is-dotfile-1.0.1.tgz";
      sha1 = "38beee44a79a835242c6cce328a88b7eddac5d5f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-equal-shallow"."^0.1.1" =
    self.by-version."is-equal-shallow"."0.1.3";
  by-version."is-equal-shallow"."0.1.3" = self.buildNodePackage {
    name = "is-equal-shallow-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-equal-shallow/-/is-equal-shallow-0.1.3.tgz";
      name = "is-equal-shallow-0.1.3.tgz";
      sha1 = "2238098fc221de0bcfa5d9eac4c45d638aa1c534";
    };
    deps = {
      "is-primitive-2.0.0" = self.by-version."is-primitive"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-extglob"."^1.0.0" =
    self.by-version."is-extglob"."1.0.0";
  by-version."is-extglob"."1.0.0" = self.buildNodePackage {
    name = "is-extglob-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-extglob/-/is-extglob-1.0.0.tgz";
      name = "is-extglob-1.0.0.tgz";
      sha1 = "ac468177c4943405a092fc8f29760c6ffc6206c0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-finite"."^1.0.0" =
    self.by-version."is-finite"."1.0.1";
  by-version."is-finite"."1.0.1" = self.buildNodePackage {
    name = "is-finite-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-finite/-/is-finite-1.0.1.tgz";
      name = "is-finite-1.0.1.tgz";
      sha1 = "6438603eaebe2793948ff4a4262ec8db3d62597b";
    };
    deps = {
      "number-is-nan-1.0.0" = self.by-version."number-is-nan"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-glob"."^1.1.1" =
    self.by-version."is-glob"."1.1.3";
  by-version."is-glob"."1.1.3" = self.buildNodePackage {
    name = "is-glob-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-glob/-/is-glob-1.1.3.tgz";
      name = "is-glob-1.1.3.tgz";
      sha1 = "b4c64b8303d39114492a460d364ccfb0d3c0a045";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-glob"."^1.1.3" =
    self.by-version."is-glob"."1.1.3";
  by-spec."is-integer"."^1.0.4" =
    self.by-version."is-integer"."1.0.4";
  by-version."is-integer"."1.0.4" = self.buildNodePackage {
    name = "is-integer-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-integer/-/is-integer-1.0.4.tgz";
      name = "is-integer-1.0.4.tgz";
      sha1 = "ad15204051dad1dcd2f6c99f1337948996f8746a";
    };
    deps = {
      "is-finite-1.0.1" = self.by-version."is-finite"."1.0.1";
      "is-nan-1.0.1" = self.by-version."is-nan"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-nan"."^1.0.1" =
    self.by-version."is-nan"."1.0.1";
  by-version."is-nan"."1.0.1" = self.buildNodePackage {
    name = "is-nan-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-nan/-/is-nan-1.0.1.tgz";
      name = "is-nan-1.0.1.tgz";
      sha1 = "36dcf2b7fe33da2bab0a40ec7934e9a54e2284d7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-number"."^1.1.0" =
    self.by-version."is-number"."1.1.2";
  by-version."is-number"."1.1.2" = self.buildNodePackage {
    name = "is-number-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-number/-/is-number-1.1.2.tgz";
      name = "is-number-1.1.2.tgz";
      sha1 = "9d82409f3a8a8beecf249b1bc7dada49829966e4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-number"."^1.1.2" =
    self.by-version."is-number"."1.1.2";
  by-spec."is-primitive"."^2.0.0" =
    self.by-version."is-primitive"."2.0.0";
  by-version."is-primitive"."2.0.0" = self.buildNodePackage {
    name = "is-primitive-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-primitive/-/is-primitive-2.0.0.tgz";
      name = "is-primitive-2.0.0.tgz";
      sha1 = "207bab91638499c07b2adf240a41a87210034575";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isarray"."0.0.1" =
    self.by-version."isarray"."0.0.1";
  by-version."isarray"."0.0.1" = self.buildNodePackage {
    name = "isarray-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isarray/-/isarray-0.0.1.tgz";
      name = "isarray-0.0.1.tgz";
      sha1 = "8a18acfca9a8f4177e09abfc6038939b05d1eedf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isobject"."^0.2.0" =
    self.by-version."isobject"."0.2.0";
  by-version."isobject"."0.2.0" = self.buildNodePackage {
    name = "isobject-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isobject/-/isobject-0.2.0.tgz";
      name = "isobject-0.2.0.tgz";
      sha1 = "a3432192f39b910b5f02cc989487836ec70aa85e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isobject"."^1.0.0" =
    self.by-version."isobject"."1.0.0";
  by-version."isobject"."1.0.0" = self.buildNodePackage {
    name = "isobject-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isobject/-/isobject-1.0.0.tgz";
      name = "isobject-1.0.0.tgz";
      sha1 = "97fa6e8007c8e1251276be7565ce34ae69c90083";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."js-tokens"."1.0.1" =
    self.by-version."js-tokens"."1.0.1";
  by-version."js-tokens"."1.0.1" = self.buildNodePackage {
    name = "js-tokens-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/js-tokens/-/js-tokens-1.0.1.tgz";
      name = "js-tokens-1.0.1.tgz";
      sha1 = "cc435a5c8b94ad15acb7983140fc80182c89aeae";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsesc"."~0.5.0" =
    self.by-version."jsesc"."0.5.0";
  by-version."jsesc"."0.5.0" = self.buildNodePackage {
    name = "jsesc-0.5.0";
    version = "0.5.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/jsesc/-/jsesc-0.5.0.tgz";
      name = "jsesc-0.5.0.tgz";
      sha1 = "e7dee66e35d6fc16f710fe91d5cf69f70f08911d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."json3"."3.2.6" =
    self.by-version."json3"."3.2.6";
  by-version."json3"."3.2.6" = self.buildNodePackage {
    name = "json3-3.2.6";
    version = "3.2.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/json3/-/json3-3.2.6.tgz";
      name = "json3-3.2.6.tgz";
      sha1 = "f6efc93c06a04de9aec53053df2559bb19e2038b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."kind-of"."^1.0.0" =
    self.by-version."kind-of"."1.1.0";
  by-version."kind-of"."1.1.0" = self.buildNodePackage {
    name = "kind-of-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/kind-of/-/kind-of-1.1.0.tgz";
      name = "kind-of-1.1.0.tgz";
      sha1 = "140a3d2d41a36d2efcfa9377b62c24f8495a5c44";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."kind-of"."^1.1.0" =
    self.by-version."kind-of"."1.1.0";
  by-spec."left-pad"."0.0.3" =
    self.by-version."left-pad"."0.0.3";
  by-version."left-pad"."0.0.3" = self.buildNodePackage {
    name = "left-pad-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/left-pad/-/left-pad-0.0.3.tgz";
      name = "left-pad-0.0.3.tgz";
      sha1 = "04d99b4a1eaf9e5f79c05e5d745d53edd1aa8aa1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."leven"."^1.0.1" =
    self.by-version."leven"."1.0.2";
  by-version."leven"."1.0.2" = self.buildNodePackage {
    name = "leven-1.0.2";
    version = "1.0.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/leven/-/leven-1.0.2.tgz";
      name = "leven-1.0.2.tgz";
      sha1 = "9144b6eebca5f1d0680169f1a6770dcea60b75c3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."leven"."^1.0.2" =
    self.by-version."leven"."1.0.2";
  by-spec."limiter"."^1.0.5" =
    self.by-version."limiter"."1.0.5";
  by-version."limiter"."1.0.5" = self.buildNodePackage {
    name = "limiter-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/limiter/-/limiter-1.0.5.tgz";
      name = "limiter-1.0.5.tgz";
      sha1 = "9630b2a0d3bad63203f96e3d96f32f83d442dfc8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."line-numbers"."0.2.0" =
    self.by-version."line-numbers"."0.2.0";
  by-version."line-numbers"."0.2.0" = self.buildNodePackage {
    name = "line-numbers-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/line-numbers/-/line-numbers-0.2.0.tgz";
      name = "line-numbers-0.2.0.tgz";
      sha1 = "6bc028149440e570d495ab509692aa08bd779c6e";
    };
    deps = {
      "left-pad-0.0.3" = self.by-version."left-pad"."0.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."localtunnel"."^1.5.1" =
    self.by-version."localtunnel"."1.5.1";
  by-version."localtunnel"."1.5.1" = self.buildNodePackage {
    name = "localtunnel-1.5.1";
    version = "1.5.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/localtunnel/-/localtunnel-1.5.1.tgz";
      name = "localtunnel-1.5.1.tgz";
      sha1 = "6178ecaca44cfef313bec1ccf659971c1b119384";
    };
    deps = {
      "request-2.11.4" = self.by-version."request"."2.11.4";
      "optimist-0.3.4" = self.by-version."optimist"."0.3.4";
      "debug-0.7.4" = self.by-version."debug"."0.7.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash"."^2.4.1" =
    self.by-version."lodash"."2.4.2";
  by-version."lodash"."2.4.2" = self.buildNodePackage {
    name = "lodash-2.4.2";
    version = "2.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash/-/lodash-2.4.2.tgz";
      name = "lodash-2.4.2.tgz";
      sha1 = "fadd834b9683073da179b3eae6d9c0d15053f73e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash"."^3.0.1" =
    self.by-version."lodash"."3.9.3";
  by-version."lodash"."3.9.3" = self.buildNodePackage {
    name = "lodash-3.9.3";
    version = "3.9.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash/-/lodash-3.9.3.tgz";
      name = "lodash-3.9.3.tgz";
      sha1 = "0159e86832feffc6d61d852b12a953b99496bd32";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash"."^3.2.0" =
    self.by-version."lodash"."3.9.3";
  by-spec."lodash"."^3.6.0" =
    self.by-version."lodash"."3.9.3";
  by-spec."lodash"."^3.9.3" =
    self.by-version."lodash"."3.9.3";
  by-spec."lodash._arraycopy"."^3.0.0" =
    self.by-version."lodash._arraycopy"."3.0.0";
  by-version."lodash._arraycopy"."3.0.0" = self.buildNodePackage {
    name = "lodash._arraycopy-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._arraycopy/-/lodash._arraycopy-3.0.0.tgz";
      name = "lodash._arraycopy-3.0.0.tgz";
      sha1 = "76e7b7c1f1fb92547374878a562ed06a3e50f6e1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._arrayeach"."^3.0.0" =
    self.by-version."lodash._arrayeach"."3.0.0";
  by-version."lodash._arrayeach"."3.0.0" = self.buildNodePackage {
    name = "lodash._arrayeach-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._arrayeach/-/lodash._arrayeach-3.0.0.tgz";
      name = "lodash._arrayeach-3.0.0.tgz";
      sha1 = "bab156b2a90d3f1bbd5c653403349e5e5933ef9e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._basecopy"."^3.0.0" =
    self.by-version."lodash._basecopy"."3.0.1";
  by-version."lodash._basecopy"."3.0.1" = self.buildNodePackage {
    name = "lodash._basecopy-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._basecopy/-/lodash._basecopy-3.0.1.tgz";
      name = "lodash._basecopy-3.0.1.tgz";
      sha1 = "8da0e6a876cf344c0ad8a54882111dd3c5c7ca36";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._basefor"."^3.0.0" =
    self.by-version."lodash._basefor"."3.0.2";
  by-version."lodash._basefor"."3.0.2" = self.buildNodePackage {
    name = "lodash._basefor-3.0.2";
    version = "3.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._basefor/-/lodash._basefor-3.0.2.tgz";
      name = "lodash._basefor-3.0.2.tgz";
      sha1 = "3a4cece5b7031eae78a441c5416b90878eeee5a1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._bindcallback"."^3.0.0" =
    self.by-version."lodash._bindcallback"."3.0.1";
  by-version."lodash._bindcallback"."3.0.1" = self.buildNodePackage {
    name = "lodash._bindcallback-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._bindcallback/-/lodash._bindcallback-3.0.1.tgz";
      name = "lodash._bindcallback-3.0.1.tgz";
      sha1 = "e531c27644cf8b57a99e17ed95b35c748789392e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._createassigner"."^3.0.0" =
    self.by-version."lodash._createassigner"."3.1.1";
  by-version."lodash._createassigner"."3.1.1" = self.buildNodePackage {
    name = "lodash._createassigner-3.1.1";
    version = "3.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._createassigner/-/lodash._createassigner-3.1.1.tgz";
      name = "lodash._createassigner-3.1.1.tgz";
      sha1 = "838a5bae2fdaca63ac22dee8e19fa4e6d6970b11";
    };
    deps = {
      "lodash._bindcallback-3.0.1" = self.by-version."lodash._bindcallback"."3.0.1";
      "lodash._isiterateecall-3.0.9" = self.by-version."lodash._isiterateecall"."3.0.9";
      "lodash.restparam-3.6.1" = self.by-version."lodash.restparam"."3.6.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._getnative"."^3.0.0" =
    self.by-version."lodash._getnative"."3.9.0";
  by-version."lodash._getnative"."3.9.0" = self.buildNodePackage {
    name = "lodash._getnative-3.9.0";
    version = "3.9.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._getnative/-/lodash._getnative-3.9.0.tgz";
      name = "lodash._getnative-3.9.0.tgz";
      sha1 = "a478f0b87dd17d75b4311ffca2f551b2623977d9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._isiterateecall"."^3.0.0" =
    self.by-version."lodash._isiterateecall"."3.0.9";
  by-version."lodash._isiterateecall"."3.0.9" = self.buildNodePackage {
    name = "lodash._isiterateecall-3.0.9";
    version = "3.0.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._isiterateecall/-/lodash._isiterateecall-3.0.9.tgz";
      name = "lodash._isiterateecall-3.0.9.tgz";
      sha1 = "5203ad7ba425fae842460e696db9cf3e6aac057c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.isarguments"."^3.0.0" =
    self.by-version."lodash.isarguments"."3.0.3";
  by-version."lodash.isarguments"."3.0.3" = self.buildNodePackage {
    name = "lodash.isarguments-3.0.3";
    version = "3.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.isarguments/-/lodash.isarguments-3.0.3.tgz";
      name = "lodash.isarguments-3.0.3.tgz";
      sha1 = "c49ce087d622705e90018f71fa1c92fd2cdd94cf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.isarray"."^3.0.0" =
    self.by-version."lodash.isarray"."3.0.3";
  by-version."lodash.isarray"."3.0.3" = self.buildNodePackage {
    name = "lodash.isarray-3.0.3";
    version = "3.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.isarray/-/lodash.isarray-3.0.3.tgz";
      name = "lodash.isarray-3.0.3.tgz";
      sha1 = "4dba139a2d907c24fd096849ce42f19c25523553";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.isplainobject"."^3.0.0" =
    self.by-version."lodash.isplainobject"."3.1.0";
  by-version."lodash.isplainobject"."3.1.0" = self.buildNodePackage {
    name = "lodash.isplainobject-3.1.0";
    version = "3.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.isplainobject/-/lodash.isplainobject-3.1.0.tgz";
      name = "lodash.isplainobject-3.1.0.tgz";
      sha1 = "52c4231910e3eda5719c7d21d8bfdd74aad5376a";
    };
    deps = {
      "lodash._basefor-3.0.2" = self.by-version."lodash._basefor"."3.0.2";
      "lodash._getnative-3.9.0" = self.by-version."lodash._getnative"."3.9.0";
      "lodash.keysin-3.0.8" = self.by-version."lodash.keysin"."3.0.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.istypedarray"."^3.0.0" =
    self.by-version."lodash.istypedarray"."3.0.2";
  by-version."lodash.istypedarray"."3.0.2" = self.buildNodePackage {
    name = "lodash.istypedarray-3.0.2";
    version = "3.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.istypedarray/-/lodash.istypedarray-3.0.2.tgz";
      name = "lodash.istypedarray-3.0.2.tgz";
      sha1 = "9397b113c15f424f320af06caa59cc495e2093ce";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.keys"."^3.0.0" =
    self.by-version."lodash.keys"."3.1.1";
  by-version."lodash.keys"."3.1.1" = self.buildNodePackage {
    name = "lodash.keys-3.1.1";
    version = "3.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.keys/-/lodash.keys-3.1.1.tgz";
      name = "lodash.keys-3.1.1.tgz";
      sha1 = "622029518e9de0e2ae8c4688d6563a45361640ef";
    };
    deps = {
      "lodash._getnative-3.9.0" = self.by-version."lodash._getnative"."3.9.0";
      "lodash.isarguments-3.0.3" = self.by-version."lodash.isarguments"."3.0.3";
      "lodash.isarray-3.0.3" = self.by-version."lodash.isarray"."3.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.keysin"."^3.0.0" =
    self.by-version."lodash.keysin"."3.0.8";
  by-version."lodash.keysin"."3.0.8" = self.buildNodePackage {
    name = "lodash.keysin-3.0.8";
    version = "3.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.keysin/-/lodash.keysin-3.0.8.tgz";
      name = "lodash.keysin-3.0.8.tgz";
      sha1 = "22c4493ebbedb1427962a54b445b2c8a767fb47f";
    };
    deps = {
      "lodash.isarguments-3.0.3" = self.by-version."lodash.isarguments"."3.0.3";
      "lodash.isarray-3.0.3" = self.by-version."lodash.isarray"."3.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.merge"."^3.3.1" =
    self.by-version."lodash.merge"."3.3.1";
  by-version."lodash.merge"."3.3.1" = self.buildNodePackage {
    name = "lodash.merge-3.3.1";
    version = "3.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.merge/-/lodash.merge-3.3.1.tgz";
      name = "lodash.merge-3.3.1.tgz";
      sha1 = "5fb150502e491062edbe56d877aa062ecd1893e7";
    };
    deps = {
      "lodash._arraycopy-3.0.0" = self.by-version."lodash._arraycopy"."3.0.0";
      "lodash._arrayeach-3.0.0" = self.by-version."lodash._arrayeach"."3.0.0";
      "lodash._createassigner-3.1.1" = self.by-version."lodash._createassigner"."3.1.1";
      "lodash._getnative-3.9.0" = self.by-version."lodash._getnative"."3.9.0";
      "lodash.isarguments-3.0.3" = self.by-version."lodash.isarguments"."3.0.3";
      "lodash.isarray-3.0.3" = self.by-version."lodash.isarray"."3.0.3";
      "lodash.isplainobject-3.1.0" = self.by-version."lodash.isplainobject"."3.1.0";
      "lodash.istypedarray-3.0.2" = self.by-version."lodash.istypedarray"."3.0.2";
      "lodash.keys-3.1.1" = self.by-version."lodash.keys"."3.1.1";
      "lodash.keysin-3.0.8" = self.by-version."lodash.keysin"."3.0.8";
      "lodash.toplainobject-3.0.0" = self.by-version."lodash.toplainobject"."3.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.restparam"."^3.0.0" =
    self.by-version."lodash.restparam"."3.6.1";
  by-version."lodash.restparam"."3.6.1" = self.buildNodePackage {
    name = "lodash.restparam-3.6.1";
    version = "3.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.restparam/-/lodash.restparam-3.6.1.tgz";
      name = "lodash.restparam-3.6.1.tgz";
      sha1 = "936a4e309ef330a7645ed4145986c85ae5b20805";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.toplainobject"."^3.0.0" =
    self.by-version."lodash.toplainobject"."3.0.0";
  by-version."lodash.toplainobject"."3.0.0" = self.buildNodePackage {
    name = "lodash.toplainobject-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.toplainobject/-/lodash.toplainobject-3.0.0.tgz";
      name = "lodash.toplainobject-3.0.0.tgz";
      sha1 = "28790ad942d293d78aa663a07ecf7f52ca04198d";
    };
    deps = {
      "lodash._basecopy-3.0.1" = self.by-version."lodash._basecopy"."3.0.1";
      "lodash.keysin-3.0.8" = self.by-version."lodash.keysin"."3.0.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."longest"."^1.0.1" =
    self.by-version."longest"."1.0.1";
  by-version."longest"."1.0.1" = self.buildNodePackage {
    name = "longest-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/longest/-/longest-1.0.1.tgz";
      name = "longest-1.0.1.tgz";
      sha1 = "30a0b2da38f73770e8294a0d22e6625ed77d0097";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lru-cache"."2" =
    self.by-version."lru-cache"."2.6.4";
  by-version."lru-cache"."2.6.4" = self.buildNodePackage {
    name = "lru-cache-2.6.4";
    version = "2.6.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lru-cache/-/lru-cache-2.6.4.tgz";
      name = "lru-cache-2.6.4.tgz";
      sha1 = "2675190ccd1b0701ec2f652a4d0d3d400d76c0dd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."map-obj"."^1.0.0" =
    self.by-version."map-obj"."1.0.1";
  by-version."map-obj"."1.0.1" = self.buildNodePackage {
    name = "map-obj-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/map-obj/-/map-obj-1.0.1.tgz";
      name = "map-obj-1.0.1.tgz";
      sha1 = "d933ceb9205d82bdcf4886f6742bdc2b4dea146d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."meow"."^3.1.0" =
    self.by-version."meow"."3.3.0";
  by-version."meow"."3.3.0" = self.buildNodePackage {
    name = "meow-3.3.0";
    version = "3.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/meow/-/meow-3.3.0.tgz";
      name = "meow-3.3.0.tgz";
      sha1 = "f8777fd0db67f73d1de1beee08c97c8665efc6ed";
    };
    deps = {
      "camelcase-keys-1.0.0" = self.by-version."camelcase-keys"."1.0.0";
      "indent-string-1.2.1" = self.by-version."indent-string"."1.2.1";
      "minimist-1.1.1" = self.by-version."minimist"."1.1.1";
      "object-assign-3.0.0" = self.by-version."object-assign"."3.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."meow"."^3.3.0" =
    self.by-version."meow"."3.3.0";
  by-spec."micromatch"."^2.1.5" =
    self.by-version."micromatch"."2.1.6";
  by-version."micromatch"."2.1.6" = self.buildNodePackage {
    name = "micromatch-2.1.6";
    version = "2.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/micromatch/-/micromatch-2.1.6.tgz";
      name = "micromatch-2.1.6.tgz";
      sha1 = "51a65a9dcbfb92113292a071e04da35a81e9050e";
    };
    deps = {
      "arr-diff-1.0.1" = self.by-version."arr-diff"."1.0.1";
      "braces-1.8.0" = self.by-version."braces"."1.8.0";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "expand-brackets-0.1.1" = self.by-version."expand-brackets"."0.1.1";
      "filename-regex-2.0.0" = self.by-version."filename-regex"."2.0.0";
      "is-glob-1.1.3" = self.by-version."is-glob"."1.1.3";
      "kind-of-1.1.0" = self.by-version."kind-of"."1.1.0";
      "object.omit-0.2.1" = self.by-version."object.omit"."0.2.1";
      "parse-glob-3.0.2" = self.by-version."parse-glob"."3.0.2";
      "regex-cache-0.4.2" = self.by-version."regex-cache"."0.4.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime"."1.2.4" =
    self.by-version."mime"."1.2.4";
  by-version."mime"."1.2.4" = self.buildNodePackage {
    name = "mime-1.2.4";
    version = "1.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime/-/mime-1.2.4.tgz";
      name = "mime-1.2.4.tgz";
      sha1 = "11b5fdaf29c2509255176b80ad520294f5de92b7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime"."1.3.4" =
    self.by-version."mime"."1.3.4";
  by-version."mime"."1.3.4" = self.buildNodePackage {
    name = "mime-1.3.4";
    version = "1.3.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime/-/mime-1.3.4.tgz";
      name = "mime-1.3.4.tgz";
      sha1 = "115f9e3b6b3daf2959983cb38f149a2d40eb5d53";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime".">= 0.0.1" =
    self.by-version."mime"."1.3.4";
  by-spec."mime"."~1.2.2" =
    self.by-version."mime"."1.2.11";
  by-version."mime"."1.2.11" = self.buildNodePackage {
    name = "mime-1.2.11";
    version = "1.2.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime/-/mime-1.2.11.tgz";
      name = "mime-1.2.11.tgz";
      sha1 = "58203eed86e3a5ef17aed2b7d9ebd47f0a60dd10";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime"."~1.2.7" =
    self.by-version."mime"."1.2.11";
  by-spec."mime-db"."~1.13.0" =
    self.by-version."mime-db"."1.13.0";
  by-version."mime-db"."1.13.0" = self.buildNodePackage {
    name = "mime-db-1.13.0";
    version = "1.13.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-db/-/mime-db-1.13.0.tgz";
      name = "mime-db-1.13.0.tgz";
      sha1 = "fd6808168fe30835e7ea2205fc981d3b633e4e34";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-types"."~2.1.1" =
    self.by-version."mime-types"."2.1.1";
  by-version."mime-types"."2.1.1" = self.buildNodePackage {
    name = "mime-types-2.1.1";
    version = "2.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-types/-/mime-types-2.1.1.tgz";
      name = "mime-types-2.1.1.tgz";
      sha1 = "c7b692796d5166f4826d10b4675c8a916657d04e";
    };
    deps = {
      "mime-db-1.13.0" = self.by-version."mime-db"."1.13.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."^1.0.0" =
    self.by-version."minimatch"."1.0.0";
  by-version."minimatch"."1.0.0" = self.buildNodePackage {
    name = "minimatch-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-1.0.0.tgz";
      name = "minimatch-1.0.0.tgz";
      sha1 = "e0dd2120b49e1b724ce8d714c520822a9438576d";
    };
    deps = {
      "lru-cache-2.6.4" = self.by-version."lru-cache"."2.6.4";
      "sigmund-1.0.1" = self.by-version."sigmund"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."^2.0.1" =
    self.by-version."minimatch"."2.0.8";
  by-version."minimatch"."2.0.8" = self.buildNodePackage {
    name = "minimatch-2.0.8";
    version = "2.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-2.0.8.tgz";
      name = "minimatch-2.0.8.tgz";
      sha1 = "0bc20f6bf3570a698ef0ddff902063c6cabda6bf";
    };
    deps = {
      "brace-expansion-1.1.0" = self.by-version."brace-expansion"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."^2.0.3" =
    self.by-version."minimatch"."2.0.8";
  by-spec."minimatch"."~0.2.12" =
    self.by-version."minimatch"."0.2.14";
  by-version."minimatch"."0.2.14" = self.buildNodePackage {
    name = "minimatch-0.2.14";
    version = "0.2.14";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-0.2.14.tgz";
      name = "minimatch-0.2.14.tgz";
      sha1 = "c74e780574f63c6f9a090e90efbe6ef53a6a756a";
    };
    deps = {
      "lru-cache-2.6.4" = self.by-version."lru-cache"."2.6.4";
      "sigmund-1.0.1" = self.by-version."sigmund"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimist"."0.0.8" =
    self.by-version."minimist"."0.0.8";
  by-version."minimist"."0.0.8" = self.buildNodePackage {
    name = "minimist-0.0.8";
    version = "0.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimist/-/minimist-0.0.8.tgz";
      name = "minimist-0.0.8.tgz";
      sha1 = "857fcabfc3397d2625b8228262e86aa7a011b05d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimist"."^1.1.0" =
    self.by-version."minimist"."1.1.1";
  by-version."minimist"."1.1.1" = self.buildNodePackage {
    name = "minimist-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimist/-/minimist-1.1.1.tgz";
      name = "minimist-1.1.1.tgz";
      sha1 = "1bc2bc71658cdca5712475684363615b0b4f695b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mkdirp"."0.3.0" =
    self.by-version."mkdirp"."0.3.0";
  by-version."mkdirp"."0.3.0" = self.buildNodePackage {
    name = "mkdirp-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.3.0.tgz";
      name = "mkdirp-0.3.0.tgz";
      sha1 = "1bbf5ab1ba827af23575143490426455f481fe1e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mkdirp"."^0.5.1" =
    self.by-version."mkdirp"."0.5.1";
  by-version."mkdirp"."0.5.1" = self.buildNodePackage {
    name = "mkdirp-0.5.1";
    version = "0.5.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.5.1.tgz";
      name = "mkdirp-0.5.1.tgz";
      sha1 = "30057438eac6cf7f8c4767f38648d6697d75c903";
    };
    deps = {
      "minimist-0.0.8" = self.by-version."minimist"."0.0.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mkdirp"."~0.5.0" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."ms"."0.6.2" =
    self.by-version."ms"."0.6.2";
  by-version."ms"."0.6.2" = self.buildNodePackage {
    name = "ms-0.6.2";
    version = "0.6.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ms/-/ms-0.6.2.tgz";
      name = "ms-0.6.2.tgz";
      sha1 = "d89c2124c6fdc1353d65a8b77bf1aac4b193708c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ms"."0.7.1" =
    self.by-version."ms"."0.7.1";
  by-version."ms"."0.7.1" = self.buildNodePackage {
    name = "ms-0.7.1";
    version = "0.7.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ms/-/ms-0.7.1.tgz";
      name = "ms-0.7.1.tgz";
      sha1 = "9cd13c03adbff25b65effde7ce864ee952017098";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nan"."1.4.x" =
    self.by-version."nan"."1.4.3";
  by-version."nan"."1.4.3" = self.buildNodePackage {
    name = "nan-1.4.3";
    version = "1.4.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/nan/-/nan-1.4.3.tgz";
      name = "nan-1.4.3.tgz";
      sha1 = "c56b5404698063696f597435f9163c312aea5009";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nan"."^1.8.0" =
    self.by-version."nan"."1.8.4";
  by-version."nan"."1.8.4" = self.buildNodePackage {
    name = "nan-1.8.4";
    version = "1.8.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/nan/-/nan-1.8.4.tgz";
      name = "nan-1.8.4.tgz";
      sha1 = "3c76b5382eab33e44b758d2813ca9d92e9342f34";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nan"."~0.3.0" =
    self.by-version."nan"."0.3.2";
  by-version."nan"."0.3.2" = self.buildNodePackage {
    name = "nan-0.3.2";
    version = "0.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/nan/-/nan-0.3.2.tgz";
      name = "nan-0.3.2.tgz";
      sha1 = "0df1935cab15369075ef160ad2894107aa14dc2d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."negotiator"."0.5.3" =
    self.by-version."negotiator"."0.5.3";
  by-version."negotiator"."0.5.3" = self.buildNodePackage {
    name = "negotiator-0.5.3";
    version = "0.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/negotiator/-/negotiator-0.5.3.tgz";
      name = "negotiator-0.5.3.tgz";
      sha1 = "269d5c476810ec92edbe7b6c2f28316384f9a7e8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nopt"."3.0.x" =
    self.by-version."nopt"."3.0.3";
  by-version."nopt"."3.0.3" = self.buildNodePackage {
    name = "nopt-3.0.3";
    version = "3.0.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/nopt/-/nopt-3.0.3.tgz";
      name = "nopt-3.0.3.tgz";
      sha1 = "0e9978f33016bae0b75e3748c03bbbb71da5c530";
    };
    deps = {
      "abbrev-1.0.7" = self.by-version."abbrev"."1.0.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."number-is-nan"."^1.0.0" =
    self.by-version."number-is-nan"."1.0.0";
  by-version."number-is-nan"."1.0.0" = self.buildNodePackage {
    name = "number-is-nan-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/number-is-nan/-/number-is-nan-1.0.0.tgz";
      name = "number-is-nan-1.0.0.tgz";
      sha1 = "c020f529c5282adfdd233d91d4b181c3d686dc4b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-assign"."^3.0.0" =
    self.by-version."object-assign"."3.0.0";
  by-version."object-assign"."3.0.0" = self.buildNodePackage {
    name = "object-assign-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-assign/-/object-assign-3.0.0.tgz";
      name = "object-assign-3.0.0.tgz";
      sha1 = "9bedd5ca0897949bca47e7ff408062d549f587f2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-component"."0.0.3" =
    self.by-version."object-component"."0.0.3";
  by-version."object-component"."0.0.3" = self.buildNodePackage {
    name = "object-component-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-component/-/object-component-0.0.3.tgz";
      name = "object-component-0.0.3.tgz";
      sha1 = "f0c69aa50efc95b866c186f400a33769cb2f1291";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-keys"."1.0.1" =
    self.by-version."object-keys"."1.0.1";
  by-version."object-keys"."1.0.1" = self.buildNodePackage {
    name = "object-keys-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-keys/-/object-keys-1.0.1.tgz";
      name = "object-keys-1.0.1.tgz";
      sha1 = "55802e85842c26bbb5ebbc157abf3be302569ba8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-path"."^0.9.0" =
    self.by-version."object-path"."0.9.2";
  by-version."object-path"."0.9.2" = self.buildNodePackage {
    name = "object-path-0.9.2";
    version = "0.9.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-path/-/object-path-0.9.2.tgz";
      name = "object-path-0.9.2.tgz";
      sha1 = "0fd9a74fc5fad1ae3968b586bda5c632bd6c05a5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object.omit"."^0.2.1" =
    self.by-version."object.omit"."0.2.1";
  by-version."object.omit"."0.2.1" = self.buildNodePackage {
    name = "object.omit-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object.omit/-/object.omit-0.2.1.tgz";
      name = "object.omit-0.2.1.tgz";
      sha1 = "ca9af6631df6883fe61bae74df82a4fbc9df2e92";
    };
    deps = {
      "for-own-0.1.3" = self.by-version."for-own"."0.1.3";
      "isobject-0.2.0" = self.by-version."isobject"."0.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."on-finished"."~2.3.0" =
    self.by-version."on-finished"."2.3.0";
  by-version."on-finished"."2.3.0" = self.buildNodePackage {
    name = "on-finished-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/on-finished/-/on-finished-2.3.0.tgz";
      name = "on-finished-2.3.0.tgz";
      sha1 = "20f1336481b083cd75337992a16971aa2d906947";
    };
    deps = {
      "ee-first-1.1.1" = self.by-version."ee-first"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."once"."^1.3.0" =
    self.by-version."once"."1.3.2";
  by-version."once"."1.3.2" = self.buildNodePackage {
    name = "once-1.3.2";
    version = "1.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/once/-/once-1.3.2.tgz";
      name = "once-1.3.2.tgz";
      sha1 = "d8feeca93b039ec1dcdee7741c92bdac5e28081b";
    };
    deps = {
      "wrappy-1.0.1" = self.by-version."wrappy"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."opn"."^2.0.0" =
    self.by-version."opn"."2.0.1";
  by-version."opn"."2.0.1" = self.buildNodePackage {
    name = "opn-2.0.1";
    version = "2.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/opn/-/opn-2.0.1.tgz";
      name = "opn-2.0.1.tgz";
      sha1 = "1b739608f4b92220e7021ab35fa85be73036c2e6";
    };
    deps = {
      "meow-3.3.0" = self.by-version."meow"."3.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."opt-merger"."^1.1.0" =
    self.by-version."opt-merger"."1.1.0";
  by-version."opt-merger"."1.1.0" = self.buildNodePackage {
    name = "opt-merger-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/opt-merger/-/opt-merger-1.1.0.tgz";
      name = "opt-merger-1.1.0.tgz";
      sha1 = "5c7beb6b5beac3b4f6a43f9d77c6c9403cc4a802";
    };
    deps = {
      "lodash-2.4.2" = self.by-version."lodash"."2.4.2";
      "minimist-1.1.1" = self.by-version."minimist"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."optimist"."0.3.4" =
    self.by-version."optimist"."0.3.4";
  by-version."optimist"."0.3.4" = self.buildNodePackage {
    name = "optimist-0.3.4";
    version = "0.3.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/optimist/-/optimist-0.3.4.tgz";
      name = "optimist-0.3.4.tgz";
      sha1 = "4d6d0bd71ffad0da4ba4f6d876d5eeb04e07480b";
    };
    deps = {
      "wordwrap-0.0.3" = self.by-version."wordwrap"."0.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."options".">=0.0.5" =
    self.by-version."options"."0.0.6";
  by-version."options"."0.0.6" = self.buildNodePackage {
    name = "options-0.0.6";
    version = "0.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/options/-/options-0.0.6.tgz";
      name = "options-0.0.6.tgz";
      sha1 = "ec22d312806bb53e731773e7cdaefcf1c643128f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."os-tmpdir"."^1.0.1" =
    self.by-version."os-tmpdir"."1.0.1";
  by-version."os-tmpdir"."1.0.1" = self.buildNodePackage {
    name = "os-tmpdir-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/os-tmpdir/-/os-tmpdir-1.0.1.tgz";
      name = "os-tmpdir-1.0.1.tgz";
      sha1 = "e9b423a1edaf479882562e92ed71d7743a071b6e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."output-file-sync"."^1.1.0" =
    self.by-version."output-file-sync"."1.1.1";
  by-version."output-file-sync"."1.1.1" = self.buildNodePackage {
    name = "output-file-sync-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/output-file-sync/-/output-file-sync-1.1.1.tgz";
      name = "output-file-sync-1.1.1.tgz";
      sha1 = "a4653997c2df63c9811f7f1d7a1208404ed32e9e";
    };
    deps = {
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "xtend-4.0.0" = self.by-version."xtend"."4.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pad-left"."^1.0.2" =
    self.by-version."pad-left"."1.0.2";
  by-version."pad-left"."1.0.2" = self.buildNodePackage {
    name = "pad-left-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pad-left/-/pad-left-1.0.2.tgz";
      name = "pad-left-1.0.2.tgz";
      sha1 = "19e5735ea98395a26cedc6ab926ead10f3100d4c";
    };
    deps = {
      "repeat-string-1.5.2" = self.by-version."repeat-string"."1.5.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parse-glob"."^3.0.0" =
    self.by-version."parse-glob"."3.0.2";
  by-version."parse-glob"."3.0.2" = self.buildNodePackage {
    name = "parse-glob-3.0.2";
    version = "3.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parse-glob/-/parse-glob-3.0.2.tgz";
      name = "parse-glob-3.0.2.tgz";
      sha1 = "8f68833a1af801bbcbc1d0a09b79755d6b1198d9";
    };
    deps = {
      "glob-base-0.2.0" = self.by-version."glob-base"."0.2.0";
      "is-dotfile-1.0.1" = self.by-version."is-dotfile"."1.0.1";
      "is-extglob-1.0.0" = self.by-version."is-extglob"."1.0.0";
      "is-glob-1.1.3" = self.by-version."is-glob"."1.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parsejson"."0.0.1" =
    self.by-version."parsejson"."0.0.1";
  by-version."parsejson"."0.0.1" = self.buildNodePackage {
    name = "parsejson-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parsejson/-/parsejson-0.0.1.tgz";
      name = "parsejson-0.0.1.tgz";
      sha1 = "9b10c6c0d825ab589e685153826de0a3ba278bcc";
    };
    deps = {
      "better-assert-1.0.2" = self.by-version."better-assert"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parseqs"."0.0.2" =
    self.by-version."parseqs"."0.0.2";
  by-version."parseqs"."0.0.2" = self.buildNodePackage {
    name = "parseqs-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parseqs/-/parseqs-0.0.2.tgz";
      name = "parseqs-0.0.2.tgz";
      sha1 = "9dfe70b2cddac388bde4f35b1f240fa58adbe6c7";
    };
    deps = {
      "better-assert-1.0.2" = self.by-version."better-assert"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parseuri"."0.0.2" =
    self.by-version."parseuri"."0.0.2";
  by-version."parseuri"."0.0.2" = self.buildNodePackage {
    name = "parseuri-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parseuri/-/parseuri-0.0.2.tgz";
      name = "parseuri-0.0.2.tgz";
      sha1 = "db41878f2d6964718be870b3140973d8093be156";
    };
    deps = {
      "better-assert-1.0.2" = self.by-version."better-assert"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parseuri"."0.0.4" =
    self.by-version."parseuri"."0.0.4";
  by-version."parseuri"."0.0.4" = self.buildNodePackage {
    name = "parseuri-0.0.4";
    version = "0.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parseuri/-/parseuri-0.0.4.tgz";
      name = "parseuri-0.0.4.tgz";
      sha1 = "806582a39887e1ea18dd5e2fe0e01902268e9350";
    };
    deps = {
      "better-assert-1.0.2" = self.by-version."better-assert"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parseurl"."~1.3.0" =
    self.by-version."parseurl"."1.3.0";
  by-version."parseurl"."1.3.0" = self.buildNodePackage {
    name = "parseurl-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/parseurl/-/parseurl-1.3.0.tgz";
      name = "parseurl-1.3.0.tgz";
      sha1 = "b58046db4223e145afa76009e61bac87cc2281b3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-is-absolute"."^1.0.0" =
    self.by-version."path-is-absolute"."1.0.0";
  by-version."path-is-absolute"."1.0.0" = self.buildNodePackage {
    name = "path-is-absolute-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.0.tgz";
      name = "path-is-absolute-1.0.0.tgz";
      sha1 = "263dada66ab3f2fb10bf7f9d24dd8f3e570ef912";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."portscanner"."^1.0.0" =
    self.by-version."portscanner"."1.0.0";
  by-version."portscanner"."1.0.0" = self.buildNodePackage {
    name = "portscanner-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/portscanner/-/portscanner-1.0.0.tgz";
      name = "portscanner-1.0.0.tgz";
      sha1 = "3b5cfe393828b5160abc600e6270ebc2f1590558";
    };
    deps = {
      "async-0.1.15" = self.by-version."async"."0.1.15";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."preserve"."^0.2.0" =
    self.by-version."preserve"."0.2.0";
  by-version."preserve"."0.2.0" = self.buildNodePackage {
    name = "preserve-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/preserve/-/preserve-0.2.0.tgz";
      name = "preserve-0.2.0.tgz";
      sha1 = "815ed1f6ebc65926f865b310c0713bcb3315ce4b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."private"."^0.1.6" =
    self.by-version."private"."0.1.6";
  by-version."private"."0.1.6" = self.buildNodePackage {
    name = "private-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/private/-/private-0.1.6.tgz";
      name = "private-0.1.6.tgz";
      sha1 = "55c6a976d0f9bafb9924851350fe47b9b5fbb7c1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."private"."~0.1.5" =
    self.by-version."private"."0.1.6";
  by-spec."private"."~0.1.6" =
    self.by-version."private"."0.1.6";
  by-spec."q"."~1.1.2" =
    self.by-version."q"."1.1.2";
  by-version."q"."1.1.2" = self.buildNodePackage {
    name = "q-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/q/-/q-1.1.2.tgz";
      name = "q-1.1.2.tgz";
      sha1 = "6357e291206701d99f197ab84e57e8ad196f2a89";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs"."0.4.x" =
    self.by-version."qs"."0.4.2";
  by-version."qs"."0.4.2" = self.buildNodePackage {
    name = "qs-0.4.2";
    version = "0.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-0.4.2.tgz";
      name = "qs-0.4.2.tgz";
      sha1 = "3cac4c861e371a8c9c4770ac23cda8de639b8e5f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs".">= 0.4.0" =
    self.by-version."qs"."3.1.0";
  by-version."qs"."3.1.0" = self.buildNodePackage {
    name = "qs-3.1.0";
    version = "3.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-3.1.0.tgz";
      name = "qs-3.1.0.tgz";
      sha1 = "d0e9ae745233a12dc43fb4f3055bba446261153c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."query-string"."^2.3.0" =
    self.by-version."query-string"."2.3.0";
  by-version."query-string"."2.3.0" = self.buildNodePackage {
    name = "query-string-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/query-string/-/query-string-2.3.0.tgz";
      name = "query-string-2.3.0.tgz";
      sha1 = "4e016c5449c04c483da72b651eac4262ef6fe394";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."randomatic"."^1.1.0" =
    self.by-version."randomatic"."1.1.0";
  by-version."randomatic"."1.1.0" = self.buildNodePackage {
    name = "randomatic-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/randomatic/-/randomatic-1.1.0.tgz";
      name = "randomatic-1.1.0.tgz";
      sha1 = "2ca36b9f93747aac985eb242749af88b45d5d42d";
    };
    deps = {
      "is-number-1.1.2" = self.by-version."is-number"."1.1.2";
      "kind-of-1.1.0" = self.by-version."kind-of"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."range-parser"."~1.0.2" =
    self.by-version."range-parser"."1.0.2";
  by-version."range-parser"."1.0.2" = self.buildNodePackage {
    name = "range-parser-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/range-parser/-/range-parser-1.0.2.tgz";
      name = "range-parser-1.0.2.tgz";
      sha1 = "06a12a42e5131ba8e457cd892044867f2344e549";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."~1.0.26-2" =
    self.by-version."readable-stream"."1.0.33";
  by-version."readable-stream"."1.0.33" = self.buildNodePackage {
    name = "readable-stream-1.0.33";
    version = "1.0.33";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readable-stream/-/readable-stream-1.0.33.tgz";
      name = "readable-stream-1.0.33.tgz";
      sha1 = "3a360dd66c1b1d7fd4705389860eda1d0f61126c";
    };
    deps = {
      "core-util-is-1.0.1" = self.by-version."core-util-is"."1.0.1";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readdirp"."^1.3.0" =
    self.by-version."readdirp"."1.3.0";
  by-version."readdirp"."1.3.0" = self.buildNodePackage {
    name = "readdirp-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readdirp/-/readdirp-1.3.0.tgz";
      name = "readdirp-1.3.0.tgz";
      sha1 = "eaf1a9b463be9a8190fc9ae163aa1ac934aa340b";
    };
    deps = {
      "graceful-fs-2.0.3" = self.by-version."graceful-fs"."2.0.3";
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."recast"."^0.10.6" =
    self.by-version."recast"."0.10.12";
  by-version."recast"."0.10.12" = self.buildNodePackage {
    name = "recast-0.10.12";
    version = "0.10.12";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/recast/-/recast-0.10.12.tgz";
      name = "recast-0.10.12.tgz";
      sha1 = "c616c1b7c4a82f0b9eb68734fc8f46ad2f5d2ac5";
    };
    deps = {
      "esprima-fb-14001.1.0-dev-harmony-fb" = self.by-version."esprima-fb"."14001.1.0-dev-harmony-fb";
      "source-map-0.4.2" = self.by-version."source-map"."0.4.2";
      "private-0.1.6" = self.by-version."private"."0.1.6";
      "ast-types-0.7.6" = self.by-version."ast-types"."0.7.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."recast"."~0.10.0" =
    self.by-version."recast"."0.10.12";
  by-spec."recast"."~0.10.3" =
    self.by-version."recast"."0.10.12";
  by-spec."regenerate"."^1.2.1" =
    self.by-version."regenerate"."1.2.1";
  by-version."regenerate"."1.2.1" = self.buildNodePackage {
    name = "regenerate-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/regenerate/-/regenerate-1.2.1.tgz";
      name = "regenerate-1.2.1.tgz";
      sha1 = "9e30ba68a6bd96ac3dcba62ab09d55d4b2fcbe04";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."regenerator"."0.8.30" =
    self.by-version."regenerator"."0.8.30";
  by-version."regenerator"."0.8.30" = self.buildNodePackage {
    name = "regenerator-0.8.30";
    version = "0.8.30";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/regenerator/-/regenerator-0.8.30.tgz";
      name = "regenerator-0.8.30.tgz";
      sha1 = "5fc06be521b6fb038160f088e070261f8c9c4373";
    };
    deps = {
      "commoner-0.10.3" = self.by-version."commoner"."0.10.3";
      "esprima-fb-13001.1.0-dev-harmony-fb" = self.by-version."esprima-fb"."13001.1.0-dev-harmony-fb";
      "recast-0.10.12" = self.by-version."recast"."0.10.12";
      "private-0.1.6" = self.by-version."private"."0.1.6";
      "through-2.3.7" = self.by-version."through"."2.3.7";
      "defs-1.1.0" = self.by-version."defs"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."regex-cache"."^0.4.0" =
    self.by-version."regex-cache"."0.4.2";
  by-version."regex-cache"."0.4.2" = self.buildNodePackage {
    name = "regex-cache-0.4.2";
    version = "0.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/regex-cache/-/regex-cache-0.4.2.tgz";
      name = "regex-cache-0.4.2.tgz";
      sha1 = "6e4f89c266bc03c33fd129c062184687f4663487";
    };
    deps = {
      "is-equal-shallow-0.1.3" = self.by-version."is-equal-shallow"."0.1.3";
      "is-primitive-2.0.0" = self.by-version."is-primitive"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."regexpu"."^1.1.2" =
    self.by-version."regexpu"."1.2.0";
  by-version."regexpu"."1.2.0" = self.buildNodePackage {
    name = "regexpu-1.2.0";
    version = "1.2.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/regexpu/-/regexpu-1.2.0.tgz";
      name = "regexpu-1.2.0.tgz";
      sha1 = "f71c5ffefb90a876db83968ca9b2df2acaafffc4";
    };
    deps = {
      "recast-0.10.12" = self.by-version."recast"."0.10.12";
      "regenerate-1.2.1" = self.by-version."regenerate"."1.2.1";
      "regjsgen-0.2.0" = self.by-version."regjsgen"."0.2.0";
      "regjsparser-0.1.4" = self.by-version."regjsparser"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."regjsgen"."^0.2.0" =
    self.by-version."regjsgen"."0.2.0";
  by-version."regjsgen"."0.2.0" = self.buildNodePackage {
    name = "regjsgen-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/regjsgen/-/regjsgen-0.2.0.tgz";
      name = "regjsgen-0.2.0.tgz";
      sha1 = "6c016adeac554f75823fe37ac05b92d5a4edb1f7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."regjsparser"."^0.1.4" =
    self.by-version."regjsparser"."0.1.4";
  by-version."regjsparser"."0.1.4" = self.buildNodePackage {
    name = "regjsparser-0.1.4";
    version = "0.1.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/regjsparser/-/regjsparser-0.1.4.tgz";
      name = "regjsparser-0.1.4.tgz";
      sha1 = "958289586a3d9447abd42d3d02776fe02c16e906";
    };
    deps = {
      "jsesc-0.5.0" = self.by-version."jsesc"."0.5.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."repeat-element"."^1.1.0" =
    self.by-version."repeat-element"."1.1.2";
  by-version."repeat-element"."1.1.2" = self.buildNodePackage {
    name = "repeat-element-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/repeat-element/-/repeat-element-1.1.2.tgz";
      name = "repeat-element-1.1.2.tgz";
      sha1 = "ef089a178d1483baae4d93eb98b4f9e4e11d990a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."repeat-string"."^1.3.0" =
    self.by-version."repeat-string"."1.5.2";
  by-version."repeat-string"."1.5.2" = self.buildNodePackage {
    name = "repeat-string-1.5.2";
    version = "1.5.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/repeat-string/-/repeat-string-1.5.2.tgz";
      name = "repeat-string-1.5.2.tgz";
      sha1 = "21065f70727ad053a0dd5e957ac9e00c7560d90a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."repeat-string"."^1.5.2" =
    self.by-version."repeat-string"."1.5.2";
  by-spec."repeating"."^1.1.0" =
    self.by-version."repeating"."1.1.3";
  by-version."repeating"."1.1.3" = self.buildNodePackage {
    name = "repeating-1.1.3";
    version = "1.1.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/repeating/-/repeating-1.1.3.tgz";
      name = "repeating-1.1.3.tgz";
      sha1 = "3d4114218877537494f97f77f9785fab810fa4ac";
    };
    deps = {
      "is-finite-1.0.1" = self.by-version."is-finite"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."repeating"."^1.1.2" =
    self.by-version."repeating"."1.1.3";
  by-spec."request"."2.11.4" =
    self.by-version."request"."2.11.4";
  by-version."request"."2.11.4" = self.buildNodePackage {
    name = "request-2.11.4";
    version = "2.11.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request/-/request-2.11.4.tgz";
      name = "request-2.11.4.tgz";
      sha1 = "6347d7d44e52dc588108cc1ce5cee975fc8926de";
    };
    deps = {
      "form-data-0.0.10" = self.by-version."form-data"."0.0.10";
      "mime-1.2.11" = self.by-version."mime"."1.2.11";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."requires-port"."0.x.x" =
    self.by-version."requires-port"."0.0.1";
  by-version."requires-port"."0.0.1" = self.buildNodePackage {
    name = "requires-port-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/requires-port/-/requires-port-0.0.1.tgz";
      name = "requires-port-0.0.1.tgz";
      sha1 = "4b4414411d9df7c855995dd899a8c78a2951c16d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."resolve"."^1.1.6" =
    self.by-version."resolve"."1.1.6";
  by-version."resolve"."1.1.6" = self.buildNodePackage {
    name = "resolve-1.1.6";
    version = "1.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/resolve/-/resolve-1.1.6.tgz";
      name = "resolve-1.1.6.tgz";
      sha1 = "d3492ad054ca800f5befa612e61beac1eec98f8f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."resp-modifier"."^4.0.2" =
    self.by-version."resp-modifier"."4.0.2";
  by-version."resp-modifier"."4.0.2" = self.buildNodePackage {
    name = "resp-modifier-4.0.2";
    version = "4.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/resp-modifier/-/resp-modifier-4.0.2.tgz";
      name = "resp-modifier-4.0.2.tgz";
      sha1 = "226061a5eae53c04dcd3fdb3d6a67ba7b181a442";
    };
    deps = {
      "minimatch-2.0.8" = self.by-version."minimatch"."2.0.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."send"."0.13.0" =
    self.by-version."send"."0.13.0";
  by-version."send"."0.13.0" = self.buildNodePackage {
    name = "send-0.13.0";
    version = "0.13.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/send/-/send-0.13.0.tgz";
      name = "send-0.13.0.tgz";
      sha1 = "518f921aeb0560aec7dcab2990b14cf6f3cce5de";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "depd-1.0.1" = self.by-version."depd"."1.0.1";
      "destroy-1.0.3" = self.by-version."destroy"."1.0.3";
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
      "etag-1.7.0" = self.by-version."etag"."1.7.0";
      "fresh-0.3.0" = self.by-version."fresh"."0.3.0";
      "http-errors-1.3.1" = self.by-version."http-errors"."1.3.1";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "ms-0.7.1" = self.by-version."ms"."0.7.1";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "range-parser-1.0.2" = self.by-version."range-parser"."1.0.2";
      "statuses-1.2.1" = self.by-version."statuses"."1.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."serve-index"."^1.7.0" =
    self.by-version."serve-index"."1.7.0";
  by-version."serve-index"."1.7.0" = self.buildNodePackage {
    name = "serve-index-1.7.0";
    version = "1.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/serve-index/-/serve-index-1.7.0.tgz";
      name = "serve-index-1.7.0.tgz";
      sha1 = "03960721b89661507283baa92499c80c9f366f0a";
    };
    deps = {
      "accepts-1.2.9" = self.by-version."accepts"."1.2.9";
      "batch-0.5.2" = self.by-version."batch"."0.5.2";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
      "http-errors-1.3.1" = self.by-version."http-errors"."1.3.1";
      "mime-types-2.1.1" = self.by-version."mime-types"."2.1.1";
      "parseurl-1.3.0" = self.by-version."parseurl"."1.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."serve-static"."^1.9.3" =
    self.by-version."serve-static"."1.10.0";
  by-version."serve-static"."1.10.0" = self.buildNodePackage {
    name = "serve-static-1.10.0";
    version = "1.10.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/serve-static/-/serve-static-1.10.0.tgz";
      name = "serve-static-1.10.0.tgz";
      sha1 = "be632faa685820e4a43ed3df1379135cc4f370d7";
    };
    deps = {
      "escape-html-1.0.2" = self.by-version."escape-html"."1.0.2";
      "parseurl-1.3.0" = self.by-version."parseurl"."1.3.0";
      "send-0.13.0" = self.by-version."send"."0.13.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."shebang-regex"."^1.0.0" =
    self.by-version."shebang-regex"."1.0.0";
  by-version."shebang-regex"."1.0.0" = self.buildNodePackage {
    name = "shebang-regex-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/shebang-regex/-/shebang-regex-1.0.0.tgz";
      name = "shebang-regex-1.0.0.tgz";
      sha1 = "da42f49740c0b42db2ca9728571cb190c98efea3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sigmund"."~1.0.0" =
    self.by-version."sigmund"."1.0.1";
  by-version."sigmund"."1.0.1" = self.buildNodePackage {
    name = "sigmund-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sigmund/-/sigmund-1.0.1.tgz";
      name = "sigmund-1.0.1.tgz";
      sha1 = "3ff21f198cad2175f9f3b781853fd94d0d19b590";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."simple-fmt"."~0.1.0" =
    self.by-version."simple-fmt"."0.1.0";
  by-version."simple-fmt"."0.1.0" = self.buildNodePackage {
    name = "simple-fmt-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/simple-fmt/-/simple-fmt-0.1.0.tgz";
      name = "simple-fmt-0.1.0.tgz";
      sha1 = "191bf566a59e6530482cb25ab53b4a8dc85c3a6b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."simple-is"."~0.2.0" =
    self.by-version."simple-is"."0.2.0";
  by-version."simple-is"."0.2.0" = self.buildNodePackage {
    name = "simple-is-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/simple-is/-/simple-is-0.2.0.tgz";
      name = "simple-is-0.2.0.tgz";
      sha1 = "2abb75aade39deb5cc815ce10e6191164850baf0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."slash"."^1.0.0" =
    self.by-version."slash"."1.0.0";
  by-version."slash"."1.0.0" = self.buildNodePackage {
    name = "slash-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/slash/-/slash-1.0.0.tgz";
      name = "slash-1.0.0.tgz";
      sha1 = "c41f2f6c39fc16d1cd17ad4b5d896114ae470d55";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."socket.io"."^1.3.5" =
    self.by-version."socket.io"."1.3.5";
  by-version."socket.io"."1.3.5" = self.buildNodePackage {
    name = "socket.io-1.3.5";
    version = "1.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io/-/socket.io-1.3.5.tgz";
      name = "socket.io-1.3.5.tgz";
      sha1 = "bfd609f37626889e94df9d3526db79a84255f1d8";
    };
    deps = {
      "engine.io-1.5.1" = self.by-version."engine.io"."1.5.1";
      "socket.io-parser-2.2.4" = self.by-version."socket.io-parser"."2.2.4";
      "socket.io-client-1.3.5" = self.by-version."socket.io-client"."1.3.5";
      "socket.io-adapter-0.3.1" = self.by-version."socket.io-adapter"."0.3.1";
      "has-binary-data-0.1.3" = self.by-version."has-binary-data"."0.1.3";
      "debug-2.1.0" = self.by-version."debug"."2.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."socket.io-adapter"."0.3.1" =
    self.by-version."socket.io-adapter"."0.3.1";
  by-version."socket.io-adapter"."0.3.1" = self.buildNodePackage {
    name = "socket.io-adapter-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io-adapter/-/socket.io-adapter-0.3.1.tgz";
      name = "socket.io-adapter-0.3.1.tgz";
      sha1 = "df81f970b4df6493902d93e519c7b72755c3a958";
    };
    deps = {
      "debug-1.0.2" = self.by-version."debug"."1.0.2";
      "socket.io-parser-2.2.2" = self.by-version."socket.io-parser"."2.2.2";
      "object-keys-1.0.1" = self.by-version."object-keys"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."socket.io-client"."1.3.5" =
    self.by-version."socket.io-client"."1.3.5";
  by-version."socket.io-client"."1.3.5" = self.buildNodePackage {
    name = "socket.io-client-1.3.5";
    version = "1.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io-client/-/socket.io-client-1.3.5.tgz";
      name = "socket.io-client-1.3.5.tgz";
      sha1 = "9c3a6fbdbd99420c3633a16b4e2543e73f1303ea";
    };
    deps = {
      "debug-0.7.4" = self.by-version."debug"."0.7.4";
      "engine.io-client-1.5.1" = self.by-version."engine.io-client"."1.5.1";
      "component-bind-1.0.0" = self.by-version."component-bind"."1.0.0";
      "component-emitter-1.1.2" = self.by-version."component-emitter"."1.1.2";
      "object-component-0.0.3" = self.by-version."object-component"."0.0.3";
      "socket.io-parser-2.2.4" = self.by-version."socket.io-parser"."2.2.4";
      "has-binary-0.1.6" = self.by-version."has-binary"."0.1.6";
      "indexof-0.0.1" = self.by-version."indexof"."0.0.1";
      "parseuri-0.0.2" = self.by-version."parseuri"."0.0.2";
      "to-array-0.1.3" = self.by-version."to-array"."0.1.3";
      "backo2-1.0.2" = self.by-version."backo2"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."socket.io-parser"."2.2.2" =
    self.by-version."socket.io-parser"."2.2.2";
  by-version."socket.io-parser"."2.2.2" = self.buildNodePackage {
    name = "socket.io-parser-2.2.2";
    version = "2.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io-parser/-/socket.io-parser-2.2.2.tgz";
      name = "socket.io-parser-2.2.2.tgz";
      sha1 = "3d7af6b64497e956b7d9fe775f999716027f9417";
    };
    deps = {
      "debug-0.7.4" = self.by-version."debug"."0.7.4";
      "json3-3.2.6" = self.by-version."json3"."3.2.6";
      "component-emitter-1.1.2" = self.by-version."component-emitter"."1.1.2";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "benchmark-1.0.0" = self.by-version."benchmark"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."socket.io-parser"."2.2.4" =
    self.by-version."socket.io-parser"."2.2.4";
  by-version."socket.io-parser"."2.2.4" = self.buildNodePackage {
    name = "socket.io-parser-2.2.4";
    version = "2.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/socket.io-parser/-/socket.io-parser-2.2.4.tgz";
      name = "socket.io-parser-2.2.4.tgz";
      sha1 = "f9ce19bf1909608ceb15d97721e23bfdd1e7cf65";
    };
    deps = {
      "debug-0.7.4" = self.by-version."debug"."0.7.4";
      "json3-3.2.6" = self.by-version."json3"."3.2.6";
      "component-emitter-1.1.2" = self.by-version."component-emitter"."1.1.2";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "benchmark-1.0.0" = self.by-version."benchmark"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-map"."0.1.32" =
    self.by-version."source-map"."0.1.32";
  by-version."source-map"."0.1.32" = self.buildNodePackage {
    name = "source-map-0.1.32";
    version = "0.1.32";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map/-/source-map-0.1.32.tgz";
      name = "source-map-0.1.32.tgz";
      sha1 = "c8b6c167797ba4740a8ea33252162ff08591b266";
    };
    deps = {
      "amdefine-0.1.1" = self.by-version."amdefine"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-map"."^0.4.0" =
    self.by-version."source-map"."0.4.2";
  by-version."source-map"."0.4.2" = self.buildNodePackage {
    name = "source-map-0.4.2";
    version = "0.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map/-/source-map-0.4.2.tgz";
      name = "source-map-0.4.2.tgz";
      sha1 = "dc9f3114394ab7c1f9782972f3d11820fff06f1f";
    };
    deps = {
      "amdefine-0.1.1" = self.by-version."amdefine"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-map"."~0.4.1" =
    self.by-version."source-map"."0.4.2";
  by-spec."source-map-support"."^0.2.10" =
    self.by-version."source-map-support"."0.2.10";
  by-version."source-map-support"."0.2.10" = self.buildNodePackage {
    name = "source-map-support-0.2.10";
    version = "0.2.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map-support/-/source-map-support-0.2.10.tgz";
      name = "source-map-support-0.2.10.tgz";
      sha1 = "ea5a3900a1c1cb25096a0ae8cc5c2b4b10ded3dc";
    };
    deps = {
      "source-map-0.1.32" = self.by-version."source-map"."0.1.32";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stable"."~0.1.3" =
    self.by-version."stable"."0.1.5";
  by-version."stable"."0.1.5" = self.buildNodePackage {
    name = "stable-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stable/-/stable-0.1.5.tgz";
      name = "stable-0.1.5.tgz";
      sha1 = "08232f60c732e9890784b5bed0734f8b32a887b9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."statuses"."1" =
    self.by-version."statuses"."1.2.1";
  by-version."statuses"."1.2.1" = self.buildNodePackage {
    name = "statuses-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/statuses/-/statuses-1.2.1.tgz";
      name = "statuses-1.2.1.tgz";
      sha1 = "dded45cc18256d51ed40aec142489d5c61026d28";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."statuses"."~1.2.1" =
    self.by-version."statuses"."1.2.1";
  by-spec."stream-throttle"."^0.1.3" =
    self.by-version."stream-throttle"."0.1.3";
  by-version."stream-throttle"."0.1.3" = self.buildNodePackage {
    name = "stream-throttle-0.1.3";
    version = "0.1.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-throttle/-/stream-throttle-0.1.3.tgz";
      name = "stream-throttle-0.1.3.tgz";
      sha1 = "add57c8d7cc73a81630d31cd55d3961cfafba9c3";
    };
    deps = {
      "commander-2.8.1" = self.by-version."commander"."2.8.1";
      "limiter-1.0.5" = self.by-version."limiter"."1.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."string_decoder"."~0.10.x" =
    self.by-version."string_decoder"."0.10.31";
  by-version."string_decoder"."0.10.31" = self.buildNodePackage {
    name = "string_decoder-0.10.31";
    version = "0.10.31";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/string_decoder/-/string_decoder-0.10.31.tgz";
      name = "string_decoder-0.10.31.tgz";
      sha1 = "62e203bc41766c6c28c9fc84301dab1c5310fa94";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stringmap"."~0.2.2" =
    self.by-version."stringmap"."0.2.2";
  by-version."stringmap"."0.2.2" = self.buildNodePackage {
    name = "stringmap-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stringmap/-/stringmap-0.2.2.tgz";
      name = "stringmap-0.2.2.tgz";
      sha1 = "556c137b258f942b8776f5b2ef582aa069d7d1b1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stringset"."~0.2.1" =
    self.by-version."stringset"."0.2.1";
  by-version."stringset"."0.2.1" = self.buildNodePackage {
    name = "stringset-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stringset/-/stringset-0.2.1.tgz";
      name = "stringset-0.2.1.tgz";
      sha1 = "ef259c4e349344377fcd1c913dd2e848c9c042b5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-ansi"."^0.3.0" =
    self.by-version."strip-ansi"."0.3.0";
  by-version."strip-ansi"."0.3.0" = self.buildNodePackage {
    name = "strip-ansi-0.3.0";
    version = "0.3.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-ansi/-/strip-ansi-0.3.0.tgz";
      name = "strip-ansi-0.3.0.tgz";
      sha1 = "25f48ea22ca79187f3174a4db8759347bb126220";
    };
    deps = {
      "ansi-regex-0.2.1" = self.by-version."ansi-regex"."0.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-ansi"."^2.0.1" =
    self.by-version."strip-ansi"."2.0.1";
  by-version."strip-ansi"."2.0.1" = self.buildNodePackage {
    name = "strip-ansi-2.0.1";
    version = "2.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-ansi/-/strip-ansi-2.0.1.tgz";
      name = "strip-ansi-2.0.1.tgz";
      sha1 = "df62c1aa94ed2f114e1d0f21fd1d50482b79a60e";
    };
    deps = {
      "ansi-regex-1.1.1" = self.by-version."ansi-regex"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-json-comments"."^1.0.2" =
    self.by-version."strip-json-comments"."1.0.2";
  by-version."strip-json-comments"."1.0.2" = self.buildNodePackage {
    name = "strip-json-comments-1.0.2";
    version = "1.0.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-json-comments/-/strip-json-comments-1.0.2.tgz";
      name = "strip-json-comments-1.0.2.tgz";
      sha1 = "5a48ab96023dbac1b7b8d0ffabf6f63f1677be9f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."supports-color"."^0.2.0" =
    self.by-version."supports-color"."0.2.0";
  by-version."supports-color"."0.2.0" = self.buildNodePackage {
    name = "supports-color-0.2.0";
    version = "0.2.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/supports-color/-/supports-color-0.2.0.tgz";
      name = "supports-color-0.2.0.tgz";
      sha1 = "d92de2694eb3f67323973d7ae3d8b55b4c22190a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."supports-color"."^1.3.0" =
    self.by-version."supports-color"."1.3.1";
  by-version."supports-color"."1.3.1" = self.buildNodePackage {
    name = "supports-color-1.3.1";
    version = "1.3.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/supports-color/-/supports-color-1.3.1.tgz";
      name = "supports-color-1.3.1.tgz";
      sha1 = "15758df09d8ff3b4acc307539fabe27095e1042d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tfunk"."^3.0.1" =
    self.by-version."tfunk"."3.0.1";
  by-version."tfunk"."3.0.1" = self.buildNodePackage {
    name = "tfunk-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tfunk/-/tfunk-3.0.1.tgz";
      name = "tfunk-3.0.1.tgz";
      sha1 = "4472e2e8b957564fbf429c88904952eb29fe9178";
    };
    deps = {
      "chalk-0.5.1" = self.by-version."chalk"."0.5.1";
      "object-path-0.9.2" = self.by-version."object-path"."0.9.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."through"."~2.3.6" =
    self.by-version."through"."2.3.7";
  by-version."through"."2.3.7" = self.buildNodePackage {
    name = "through-2.3.7";
    version = "2.3.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/through/-/through-2.3.7.tgz";
      name = "through-2.3.7.tgz";
      sha1 = "5fcc3690fed2fdf98c6fc88b4d207a4624ac3b87";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tinycolor"."0.x" =
    self.by-version."tinycolor"."0.0.1";
  by-version."tinycolor"."0.0.1" = self.buildNodePackage {
    name = "tinycolor-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tinycolor/-/tinycolor-0.0.1.tgz";
      name = "tinycolor-0.0.1.tgz";
      sha1 = "320b5a52d83abb5978d81a3e887d4aefb15a6164";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."to-array"."0.1.3" =
    self.by-version."to-array"."0.1.3";
  by-version."to-array"."0.1.3" = self.buildNodePackage {
    name = "to-array-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/to-array/-/to-array-0.1.3.tgz";
      name = "to-array-0.1.3.tgz";
      sha1 = "d45dadc6363417f60f28474fea50ecddbb4f4991";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."to-fast-properties"."^1.0.0" =
    self.by-version."to-fast-properties"."1.0.1";
  by-version."to-fast-properties"."1.0.1" = self.buildNodePackage {
    name = "to-fast-properties-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/to-fast-properties/-/to-fast-properties-1.0.1.tgz";
      name = "to-fast-properties-1.0.1.tgz";
      sha1 = "4a41554d2b2f4bbe2d794060dc47396b10bb48a8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."trim-right"."^1.0.0" =
    self.by-version."trim-right"."1.0.0";
  by-version."trim-right"."1.0.0" = self.buildNodePackage {
    name = "trim-right-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/trim-right/-/trim-right-1.0.0.tgz";
      name = "trim-right-1.0.0.tgz";
      sha1 = "c59f9d6185e89f328687afdedddbecf0d8f2627c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tryor"."~0.1.2" =
    self.by-version."tryor"."0.1.2";
  by-version."tryor"."0.1.2" = self.buildNodePackage {
    name = "tryor-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tryor/-/tryor-0.1.2.tgz";
      name = "tryor-0.1.2.tgz";
      sha1 = "8145e4ca7caff40acde3ccf946e8b8bb75b4172b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ua-parser-js"."^0.7.7" =
    self.by-version."ua-parser-js"."0.7.7";
  by-version."ua-parser-js"."0.7.7" = self.buildNodePackage {
    name = "ua-parser-js-0.7.7";
    version = "0.7.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ua-parser-js/-/ua-parser-js-0.7.7.tgz";
      name = "ua-parser-js-0.7.7.tgz";
      sha1 = "705554cc7e8ebfdd6ec755aad1382d19a8b8c8ae";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ucfirst"."^0.0.1" =
    self.by-version."ucfirst"."0.0.1";
  by-version."ucfirst"."0.0.1" = self.buildNodePackage {
    name = "ucfirst-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ucfirst/-/ucfirst-0.0.1.tgz";
      name = "ucfirst-0.0.1.tgz";
      sha1 = "5c7e9c36bccaadab34a383d0444830a2e0f3e9dc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ultron"."1.0.x" =
    self.by-version."ultron"."1.0.2";
  by-version."ultron"."1.0.2" = self.buildNodePackage {
    name = "ultron-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ultron/-/ultron-1.0.2.tgz";
      name = "ultron-1.0.2.tgz";
      sha1 = "ace116ab557cd197386a4e88f4685378c8b2e4fa";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."underscore"."1.7.x" =
    self.by-version."underscore"."1.7.0";
  by-version."underscore"."1.7.0" = self.buildNodePackage {
    name = "underscore-1.7.0";
    version = "1.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/underscore/-/underscore-1.7.0.tgz";
      name = "underscore-1.7.0.tgz";
      sha1 = "6bbaf0877500d36be34ecaa584e0db9fef035209";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."unpipe"."~1.0.0" =
    self.by-version."unpipe"."1.0.0";
  by-version."unpipe"."1.0.0" = self.buildNodePackage {
    name = "unpipe-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/unpipe/-/unpipe-1.0.0.tgz";
      name = "unpipe-1.0.0.tgz";
      sha1 = "b2bf4ee8514aae6165b4817829d21b2ef49904ec";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."user-home"."^1.1.1" =
    self.by-version."user-home"."1.1.1";
  by-version."user-home"."1.1.1" = self.buildNodePackage {
    name = "user-home-1.1.1";
    version = "1.1.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/user-home/-/user-home-1.1.1.tgz";
      name = "user-home-1.1.1.tgz";
      sha1 = "2b5be23a32b63a7c9deb8d0f28d485724a3df190";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."utf8"."2.0.0" =
    self.by-version."utf8"."2.0.0";
  by-version."utf8"."2.0.0" = self.buildNodePackage {
    name = "utf8-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/utf8/-/utf8-2.0.0.tgz";
      name = "utf8-2.0.0.tgz";
      sha1 = "79ce59eced874809cab9a71fc7102c7d45d4118d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."utils-merge"."1.0.0" =
    self.by-version."utils-merge"."1.0.0";
  by-version."utils-merge"."1.0.0" = self.buildNodePackage {
    name = "utils-merge-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/utils-merge/-/utils-merge-1.0.0.tgz";
      name = "utils-merge-1.0.0.tgz";
      sha1 = "0294fb922bb9375153541c4f7096231f287c8af8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."weinre"."^2.0.0-pre-I0Z7U9OV" =
    self.by-version."weinre"."2.0.0-pre-I0Z7U9OV";
  by-version."weinre"."2.0.0-pre-I0Z7U9OV" = self.buildNodePackage {
    name = "weinre-2.0.0-pre-I0Z7U9OV";
    version = "2.0.0-pre-I0Z7U9OV";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/weinre/-/weinre-2.0.0-pre-I0Z7U9OV.tgz";
      name = "weinre-2.0.0-pre-I0Z7U9OV.tgz";
      sha1 = "fef8aa223921f7b40bbbbd4c3ed4302f6fd0a813";
    };
    deps = {
      "express-2.5.11" = self.by-version."express"."2.5.11";
      "nopt-3.0.3" = self.by-version."nopt"."3.0.3";
      "underscore-1.7.0" = self.by-version."underscore"."1.7.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."wordwrap"."~0.0.2" =
    self.by-version."wordwrap"."0.0.3";
  by-version."wordwrap"."0.0.3" = self.buildNodePackage {
    name = "wordwrap-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/wordwrap/-/wordwrap-0.0.3.tgz";
      name = "wordwrap-0.0.3.tgz";
      sha1 = "a3d5da6cd5c0bc0008d37234bbaf1bed63059107";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."wrappy"."1" =
    self.by-version."wrappy"."1.0.1";
  by-version."wrappy"."1.0.1" = self.buildNodePackage {
    name = "wrappy-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/wrappy/-/wrappy-1.0.1.tgz";
      name = "wrappy-1.0.1.tgz";
      sha1 = "1e65969965ccbc2db4548c6b84a6f2c5aedd4739";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ws"."0.4.31" =
    self.by-version."ws"."0.4.31";
  by-version."ws"."0.4.31" = self.buildNodePackage {
    name = "ws-0.4.31";
    version = "0.4.31";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/ws/-/ws-0.4.31.tgz";
      name = "ws-0.4.31.tgz";
      sha1 = "5a4849e7a9ccd1ed5a81aeb4847c9fedf3122927";
    };
    deps = {
      "commander-0.6.1" = self.by-version."commander"."0.6.1";
      "nan-0.3.2" = self.by-version."nan"."0.3.2";
      "tinycolor-0.0.1" = self.by-version."tinycolor"."0.0.1";
      "options-0.0.6" = self.by-version."options"."0.0.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ws"."0.5.0" =
    self.by-version."ws"."0.5.0";
  by-version."ws"."0.5.0" = self.buildNodePackage {
    name = "ws-0.5.0";
    version = "0.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ws/-/ws-0.5.0.tgz";
      name = "ws-0.5.0.tgz";
      sha1 = "b3980391dc4777d83974718aa361e808d86cf9ca";
    };
    deps = {
      "nan-1.4.3" = self.by-version."nan"."1.4.3";
      "options-0.0.6" = self.by-version."options"."0.0.6";
      "ultron-1.0.2" = self.by-version."ultron"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xmlhttprequest"."https://github.com/rase-/node-XMLHttpRequest/archive/a6b6f2.tar.gz" =
    self.by-version."xmlhttprequest"."1.5.0";
  by-version."xmlhttprequest"."1.5.0" = self.buildNodePackage {
    name = "xmlhttprequest-1.5.0";
    version = "1.5.0";
    bin = false;
    src = fetchurl {
      url = "https://github.com/rase-/node-XMLHttpRequest/archive/a6b6f2.tar.gz";
      name = "xmlhttprequest-1.5.0.tgz";
      sha256 = "f29574bb6dad260b7856b8dcfd432fc9ceb52161b8ee02f387440bb7f6e39f92";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xtend"."^4.0.0" =
    self.by-version."xtend"."4.0.0";
  by-version."xtend"."4.0.0" = self.buildNodePackage {
    name = "xtend-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xtend/-/xtend-4.0.0.tgz";
      name = "xtend-4.0.0.tgz";
      sha1 = "8bc36ff87aedbe7ce9eaf0bca36b2354a743840f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."yargs"."~1.3.2" =
    self.by-version."yargs"."1.3.3";
  by-version."yargs"."1.3.3" = self.buildNodePackage {
    name = "yargs-1.3.3";
    version = "1.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/yargs/-/yargs-1.3.3.tgz";
      name = "yargs-1.3.3.tgz";
      sha1 = "054de8b61f22eefdb7207059eaef9d6b83fb931a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
}
