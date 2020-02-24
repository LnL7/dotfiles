self: super:

let
  loadPlugin = p: ''
    set rtp^=${p.rtp}
    set rtp+=${p.rtp}/after
  '';

  plugins = ''
    " Workaround for broken handling of packpath by vim8/neovim for ftplugins
    filetype off | syn off
    ${super.lib.concatStrings (map loadPlugin startPackages)}
    filetype indent plugin on | syn on
  '';

  startPackages = with super.vimPlugins; [
    sensible repeat surround
    ReplaceWithRegister vim-indent-object vim-sort-motion
    fzfWrapper fzf-vim vim-dispatch vim-test vim-projectionist vim-gitgutter
    vim-abolish commentary vim-eunuch fugitive rhubarb vim-scriptease tabular vim-tbone
    gist-vim webapi-vim
    polyglot vim-nix bats-vim vim-docbk editorconfig-vim hoogle

    # direnv-vim
  ];
in

{
  lnl = super.lnl or {} // {
    neovim = super.neovim.override {
      configure = {
        packages.darwin.start = startPackages
          ++ (with super.vimPlugins; [ ale deoplete-nvim ]);
        packages.darwin.opt = with super.vimPlugins; [
          colors-solarized
          splice-vim

          # LanguageClient-neovim coc-nvim neomake
          echodoc-vim
        ];
        customRC = ''
          ${plugins}

          source ${../../vim/vimrc}

          set clipboard=unnamed
          set mouse=a

          set listchars=tab:»·,trail:·,extends:⟩,precedes:⟨
          set relativenumber

          " ale
          let g:ale_elixir_elixir_ls_release = '${self.lnl.elixir-ls}/share/elixir-ls'
          set omnifunc=ale#completion#OmniFunc
          nnoremap <Leader>d :ALEGoToDefinition<CR>
          nnoremap <Leader>D :ALEGoToDefinitionInVSplit<CR>
          nnoremap <Leader>k :ALESignature<CR>
          nnoremap <Leader>K :ALEHover<CR>
          nnoremap [a :ALEPreviousWrap<CR>
          nnoremap ]a :ALENextWrap<CR>

          " let g:ale_completion_enabled = 1

          " deoplete
          inoremap <expr><C-g> deoplete#undo_completion()
          inoremap <expr><C-l> deoplete#refresh()
          inoremap <silent><expr><C-Tab> deoplete#mappings#manual_complete()
          inoremap <silent><expr><Tab> pumvisible() ? "\<C-n>" : "\<TAB>"

          let g:deoplete#enable_at_startup = 1

          " echodoc
          " let g:echodoc_enable_at_startup = 1
          " set noshowmode

          if filereadable($HOME . '/.vimrc')
            source ~/.vimrc
          endif
        '';
      };
    };

    vim = super.vim_configurable.customize {
      name = "vim";
      vimrcConfig.packages.darwin.start = startPackages
        ++ (with super.vimPlugins; [ youcompleteme ale ]);
      vimrcConfig.packages.darwin.opt = with super.vimPlugins; [
        colors-solarized
        splice-vim
      ];
      vimrcConfig.customRC = ''
        ${plugins}

        source ${../../vim/vimrc}

        if filereadable($HOME . '/.vimrc')
          source ~/.vimrc
        endif
      '';
    };
  };
}
