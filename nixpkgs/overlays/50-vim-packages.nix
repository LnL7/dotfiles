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
          ++ (with super.vimPlugins; [ deoplete-nvim LanguageClient-neovim ale ]);
        packages.darwin.opt = with super.vimPlugins; [
          colors-solarized
          echodoc-vim
          splice-vim

          neomake
        ];
        customRC = ''
          source ${../../vim/vimrc}

          set listchars=tab:»·,trail:·,extends:⟩,precedes:⟨
          set relativenumber

          " deoplete
          inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

          " LanguageClient-neovim
          nnoremap <C-Space> :call LanguageClient_contextMenu()<CR>
          nnoremap <Leader>d :call LanguageClient#textDocument_definition()<CR>
          nnoremap <Leader>D :call LanguageClient#textDocument_definition({'gotoCmd': 'vsplit'})<CR>
          nnoremap <Leader>K :call LanguageClient#textDocument_hover()<CR>

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
