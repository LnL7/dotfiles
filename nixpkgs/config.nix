{ pkgs
}:

{
  allowBroken = true;
  allowUnfree = true;

  packageOverrides = pkgs : rec {

    # haskellPackages = pkgs.haskellPackages.override {
    #   extension = self : super : {
    #     cabal = pkgs.haskellPackages.cabalNoTest;
    #   };
    # };

    haskellPackages = pkgs.recurseIntoAttrs (pkgs.haskellPackages.override {
      extension = self : super : {
        # Missing Packages
        helics              = self.callPackage ./haskell/helics {};
        helicsWai           = self.callPackage ./haskell/helics-wai {};
        lucid               = self.callPackage ./haskell/lucid {};
        waiMiddlewareStatic = self.callPackage ./haskell/wai-middleware-static {};

        routeGenerator = self.callPackage ./haskell/route-generator {};
        # routeGenerator = pkgs.haskellPackages.routeGenerator.override {
        # network = self.network_2_5_0_0;
        # # cabal = self.cabal.override { extension = self : super : { doCheck = false; }; };
        # };

        # TODO: use overrides
        hakyll = self.callPackage ./haskell/hakyll {};
        shake = self.callPackage ./haskell/shake {};
        systemFileio = self.callPackage ./haskell/system-fileio {};
      };
    });

    potion_HEAD = pkgs.callPackage ./potion/HEAD.nix {};

    profileEnv = with pkgs; buildEnv {
      name = "profile";
      paths = [ shellEnv serviceEnv haskellEnv elixirEnv goEnv nodeEnv ];
    };

    shellEnv = with pkgs; buildEnv {
      name = "shell";
      paths = [
        zsh
        cacert
        cloc
        curl
        git
        jq
        mercurial
        mosh
        nmap
        silver-searcher
        watch
      ];
    };

    serviceEnv = with pkgs; buildEnv {
      name = "service";
      paths = [
        nginx
        postgresql
        redis
        serviceNginx
      ];
    };

    dataDir = "/nix/data";

    plistService = pkgs.callPackage ./system/plist-service {};

    serviceNginx = with pkgs; plistService {
      name = "nginx";
      programArgs = [ "${nginx}/bin/nginx" "-g" "daemon off;" "-p" "${dataDir}/nginx" ];
      keepAlive = true;
      runAtLoad = true;
      stdout = "${dataDir}/var/log/nginx.log";
      stderr = "${dataDir}/var/log/nginx.log";
    };

    haskellEnv = with pkgs; buildEnv {
      name = "haskell";
      paths = (with haskellPackages; [
        ghc
        cabal2nix
        cabalInstall_1_20_0_6
        alex
        ghcMod
        happy
        hoogle
        shake
      ]);
    };

    elixirEnv = with pkgs; buildEnv {
      name = "elixir";
      paths = [
        erlang
        elixir
      ];
    };

    goEnv = with pkgs; buildEnv {
      name = "go";
      paths = (with go14Packages; [
        go
      ]);
    };

    nodeEnv = with pkgs; buildEnv {
      name = "node";
      paths = [
        nodejs
      ] ++ (with nodePackages; [
        npm2nix
        browserify
        coffee-script
        gulp
      ]);
    };

    # fooEnv = with pkgs; myEnvFun {
    #   name = "foo";
    #   shell = "${bash}/bin/bash";
    #   buildInputs = []
    #   extraCmds = ''
    #   '';
    # };
  };
}
