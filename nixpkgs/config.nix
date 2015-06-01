{ pkgs }:

rec {
  allowBroken = true;
  allowUnfree = true;

  haskellPackageOverrides = self : super : (let inherit (pkgs.haskell-ng) lib; in {
    ghc-mod = lib.overrideCabal super.ghc-mod (oldAttrs: {
      src = pkgs.fetchgit {
        url = https://github.com/kazu-yamamoto/ghc-mod;
        rev = "247e4e0e7616fe1fecc68fdcf80d6249ac4cee4f";
        sha256 = "2a23271d0e6907351a246f095040ba18c3ab6bf1cba08a14338d701defa55474";
      };
      buildDepends = oldAttrs.buildDepends ++ [ self.cabal-helper self.cereal ];
      patchPhase = "${pkgs.gnused}/bin/sed -i 's/Version:\ *0/Version:5.0.1.1/' ghc-mod.cabal";
    });

    cabal-helper = lib.overrideCabal super.cabal-helper (oldAttrs: {
      version = "0.3.2.0";
      sha256 = "06igjmr0n8418wid1pr74cgvlsmwni7ar72g9bddivlbxax1pfli";
    });

    # ghc-mod = lib.dontCheck super.ghc-mod; # (self.callPackage ./haskell/ghc-mod {});
    shake = lib.dontCheck super.shake;
    zip-archive = lib.dontCheck super.zip-archive;
  });

  haskellPackages784 = pkgs.haskell.packages.ghc784.override {
    overrides = self : super : {
      # Cabal_1_20_0_3 = self.callPackage ./haskell/Cabal/1.20.0.3.nix {};
      # cabal-install_1_20_0_6 = self.callPackage ./haskell/cabal-install/1.20.0.6.nix {};
    };
  };

  packageOverrides = pkgs : rec {

    ghcEnv = pkgs.haskellPackages.ghcWithPackages (p : with p; [
      ghc cabal2nix cabal-install alex happy ghc-mod hoogle shake hspec
    ]);

    ghcEnv784 = haskellPackages784.ghcWithPackages (p : with p; [
      ghc cabal2nix cabal-install alex happy ghc-mod
    ]);

    nginx = pkgs.callPackage ./nginx {};

    potion_HEAD = pkgs.callPackage ./potion/HEAD.nix {};

    nixEnv = with pkgs; buildEnv {
      name = "nix-env";
      paths = [
        nix-prefetch-scripts
        nix-repl
        nix-serve
      ];
    };

    shellEnv = with pkgs; buildEnv {
      name = "shell-env";
      paths = [
        awscli
        bashCompletion
        cloc
        curl
        exercism
        jq
        keybase
        mercurial
        mosh
        nmap
        silver-searcher
        watch
      ];
    };

    gitEnv = with pkgs; buildEnv {
      name = "git-env";
      paths = [
        git
      ] ++ (with gitAndTools; [
        # gitAnnex
        hub
      ]);
    };

    serviceEnv = with pkgs; buildEnv {
      name = "service-env";
      paths = [
        nginx
        postgresql
        redis
        # couchdb
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
      name = "haskell-env";
      paths = [ ghcEnv ];
    };

    haskellEnv784 = with pkgs; myEnvFun {
      name = "haskell-784";
      shell = "${zsh}/bin/zsh";
      buildInputs = [ ghcEnv784 ];
      extraCmds = ''
      '';
    };

    ocamlEnv = with pkgs; buildEnv {
      name = "ocaml-env";
      paths = [
        ocaml
      ] ++ (with ocamlPackages; [
        findlib
        ocaml_batteries
        opam
        ounit
      ]);
    };

    erlangEnv = with pkgs; buildEnv {
      name = "erlang-env";
      paths = [
        erlang
        elixir
        riak
      ];
    };

    clojureEnv = with pkgs; buildEnv {
      name ="clojure-env";
      paths = [
        clojure
        leiningen
      ];
    };

    rustEnv = with pkgs; buildEnv {
      name = "rust-env";
      paths = [
        rustc
      ];
    };

    goEnv = with pkgs; buildEnv {
      name = "go-env";
      paths = (with go14Packages; [
        go
      ]);
    };

    nodeEnv = with pkgs; buildEnv {
      name = "node-env";
      paths = [
        nodejs
      ] ++ (with nodePackages; [
        npm2nix
        coffee-script
        gulp
      ]);
    };

    # fooEnv = with pkgs; myEnvFun {
    #   name = "foo";
    #   shell = "${bash}/bin/bash";
    #   buildInputs = [];
    #   extraCmds = ''
    #   '';
    # };
  };
}
