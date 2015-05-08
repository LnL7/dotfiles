{ pkgs }:

{
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
    });

    cabal-helper = lib.overrideCabal super.cabal-helper (oldAttrs: {
      version = "0.3.2.0";
      sha256 = "06igjmr0n8418wid1pr74cgvlsmwni7ar72g9bddivlbxax1pfli";
    });

    # ghc-mod = lib.dontCheck super.ghc-mod; # (self.callPackage ./haskell/ghc-mod {});
    shake = lib.dontCheck super.shake;
    zip-archive = lib.dontCheck super.zip-archive;
  });

  packageOverrides = pkgs : rec {

    ghcEnv = pkgs.haskellngPackages.ghcWithPackages (p : with p; [
      ghc cabal2nix cabal-install alex happy ghc-mod hoogle shake hspec
    ]);

    ghcEnv784 = pkgs.haskell-ng.packages.ghc784.ghcWithPackages (p : with p; [
      ghc cabal-install ghc-mod
    ]);

    nginx = pkgs.callPackage ./nginx {};

    potion_HEAD = pkgs.callPackage ./potion/HEAD.nix {};

    shellEnv = with pkgs; buildEnv {
      name = "shell";
      paths = [
        cacert
        cloc
        curl
        exercism
        jq
        mercurial
        mosh
        nix-repl
        nmap
        silver-searcher
        watch
        zsh
      ];
    };

    gitEnv = with pkgs; buildEnv {
      name = "git";
      paths = [
        git
      ] ++ (with gitAndTools; [
        # gitAnnex
        hub
      ]);
    };

    serviceEnv = with pkgs; buildEnv {
      name = "service";
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
      name = "haskell";
      paths = [ ghcEnv ];
    };

    ocamlEnv = with pkgs; buildEnv {
      name = "ocaml";
      paths = [
        ocaml
      ] ++ (with ocamlPackages; [
        findlib
        ocaml_batteries
        opam
        ounit
      ]);
    };

    elixirEnv = with pkgs; buildEnv {
      name = "elixir";
      paths = [
        elixir
        erlang
        riak
      ];
    };

    clojureEnv = with pkgs; buildEnv {
      name ="clojure";
      paths = [
        clojure
        leiningen
      ];
    };

    rustEnv = with pkgs; buildEnv {
      name = "rust";
      paths = [
        rustc
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
        coffee-script
        gulp
        npm2nix
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
