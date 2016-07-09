{ pkgs }:

rec {
  allowBroken = true;
  allowUnfree = true;

  packageOverrides = pkgs : rec {
    services = pkgs.callPackage ./services {};

    potion_HEAD = pkgs.callPackage ./potion/HEAD.nix {};

    ghc-env = pkgs.haskellPackages.ghcWithPackages (p : with p; [
      ghc cabal2nix cabal-install stack alex happy hoogle halive shake hspec hdevtools
    ]);


    nix-env = with pkgs; buildEnv {
      name = "nix-env";
      paths = [
        nix-prefetch-scripts
        nix-repl
      ];
    };

    shell-env = with pkgs; buildEnv {
      name = "shell-env";
      paths = [
        # bazaar
        ctags
        curl
        # fzf
        gettext
        git
        jq
        # mercurial
        # mosh
        nmap
        silver-searcher
        # taskwarrior
        # tmux
        rcm
      ];
    };

    vim-env = with pkgs; buildEnv {
      name = "vim-env";
      paths = [
        (vim_configurable.customize {
          name = "vim";
          vimrcConfig = {
            customRC = ''
              source $HOME/.vimrc
            '';
            vam.pluginDictionaries = [
              { names = [ "youcompleteme" ]; }
            ];
          };
        })
      ];
    };

    nvim-env = with pkgs; buildEnv {
      name = "nvim-env";
      paths = [
        (neovim.override {
          # vimAlias = true;
          configure = {
            customRC = ''
              source $HOME/.vimrc

              let g:deoplete#enable_at_startup = 1
              let g:deoplete#enable_smart_case = 1
              inoremap <silent><expr> <Tab>
                    \ pumvisible() ? "\<C-n>" :
                    \ deoplete#mappings#manual_complete()
            '';
            vam.pluginDictionaries = [
              { names = [ "deoplete-nvim" "deoplete-jedi" ]; }
            ];
          };
        })
      ];
    };

    haskell-env = with pkgs; buildEnv {
      name = "haskell-env";
      paths = [ ghc-env ];
    };

    ocaml-env = with pkgs; buildEnv {
      name = "ocaml-env";
      paths = [
        ocaml
      ] ++ (with ocamlPackages; [
        opam
      ]);
    };

    erlang-env = with pkgs; buildEnv {
      name = "erlang-env";
      paths = [
        erlang
        elixir
      ];
    };

    clojure-env = with pkgs; buildEnv {
      name ="clojure-env";
      paths = [
        clojure
        leiningen
      ];
    };

    rust-env = with pkgs; buildEnv {
      name = "rust-env";
      paths = [
        cargo
        rustc
      ];
    };

    go-env = with pkgs; buildEnv {
      name = "go-env";
      paths = [
        go
        gotools
      ];
    };

    ruby-env = with pkgs; buildEnv {
      name = "ruby-env";
      paths = [
        bundix
        ruby
      ];
    };

    python-env = with pkgs; buildEnv {
      name = "python-env";
      paths = (with python27Packages; [
        python
        ipython
        flake8
      ]);
    };

    node-env = with pkgs; buildEnv {
      name = "node-env";
      paths = [
        nodejs
      ] ++ (with nodePackages; [
        npm2nix
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
