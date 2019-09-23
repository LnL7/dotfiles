self: super:

let
  startPackages = with super.vimPlugins; [
    sensible repeat surround
    ReplaceWithRegister vim-indent-object vim-sort-motion
    fzfWrapper fzf-vim vim-dispatch vim-test vim-projectionist vim-gitgutter
    vim-abolish commentary vim-eunuch fugitive vim-isort rhubarb vim-scriptease tabular vim-tbone
    gist-vim webapi-vim
    polyglot vim-nix bats-vim vim-docbk editorconfig-vim
  ];
in

{
  lnl = super.lnl or {} // {
    neovim = super.neovim.override {
      configure = {
        packages.darwin.start = startPackages
          ++ (with super.vimPlugins; [ deoplete-nvim ale ]);
        packages.darwin.opt = with super.vimPlugins; [
          colors-solarized
          echodoc-vim
          splice-vim

          LanguageClient-neovim
          neomake
        ];
        customRC = ''
          source ${../../vim/vimrc}

          set clipboard=unnamed
          set mouse=a

          set listchars=tab:»·,trail:·,extends:⟩,precedes:⟨
          set relativenumber

          " ale
          set omnifunc=ale#completion#OmniFunc
          nnoremap <Leader>d :ALEGoToDefinition<CR>
          nnoremap <Leader>D :ALEGoToDefinitionInVSplit<CR>
          nnoremap <Leader>K :ALEHover<CR>
          nnoremap [a :ALEPreviousWrap<CR>
          nnoremap ]a :ALENextWrap<CR>
          let g:ale_elixir_elixir_ls_release = '${self.lnl.elixir-ls}/share/elixir-ls'

          " let g:ale_completion_enabled = 1

          " deoplete
          inoremap <expr><C-g> deoplete#undo_completion()
          inoremap <expr><C-l> deoplete#refresh()
          inoremap <silent><expr><C-Tab> deoplete#mappings#manual_complete()
          inoremap <silent><expr><Tab> pumvisible() ? "\<C-n>" : "\<TAB>"

          if filereadable($HOME . '/.vimrc')
            source ~/.vimrc
          endif
        '';
      };
    };

    vim = super.vim_configurable.customize {
      name = "vim";
      vimrcConfig.packages.darwin.start = startPackages
        ++ (with super.vimPlugins; [ YouCompleteMe ale ]);
      vimrcConfig.packages.darwin.opt = with super.vimPlugins; [
        colors-solarized
        echodoc-vim
        splice-vim
      ];
      vimrcConfig.customRC = ''
        source ${../../vim/vimrc}

        " youcompleteme
        nmap <Leader>d :YcmCompleter GoTo<CR>
        nmap <Leader>K :YcmCompleter GetDoc<CR>

        nmap <Leader>jt :YcmCompleter GetType<CR>
        nmap <Leader>jc :YcmCompleter GoToDeclaration<CR>
        nmap <Leader>jf :YcmCompleter GoToDefinition<CR>
        nmap <Leader>jr :YcmCompleter GoToReferences<CR>

        if filereadable($HOME . '/.vimrc')
          source ~/.vimrc
        endif
      '';
    };
  };
}
