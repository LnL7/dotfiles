source $HOME/.vimrc.bundles

filetype plugin indent on
syntax on

" Settings
" ========

set gdefault     " When on, the ":substitute" flag 'g' is default on.
set hlsearch     " When there is a previous search pattern, highlight all its matches.
set incsearch    " While typing a search command, show where the pattern, as it was typed so far, matches.
set lazyredraw   " When this option is set, the screen will not be redrawn while executing macros.
set nowrap       " When off lines will not wrap and only part of long lines will be displayed.
set showcmd      " Show (partial) command in the last line of the screen.
set showmatch    " When a bracket is inserted, briefly jump to the matching one.
set splitbelow   " When on, splitting a window will put the new window below the current one.
set splitright   " When on, splitting a window will put the new window right of the current one.

set laststatus=2 " The value of this option influences when the last window will have a status line

set foldopen-=block " Specifies for which type of commands folds will be opened, if the command moves the cursor into a closed fold.

set clipboard=unnamed " When the "unnamed" string is included in the 'clipboard' option, the unnamed register is the same as the "* register.

set fillchars+=vert:\ ,stl:\ ,stlnc:\  " Characters to fill the statuslines and vertical separators.

set list                                          " Useful to see the difference between tabs and spaces and for trailing blanks.
set listchars=tab:»·,trail:·,extends:⟩,precedes:⟨ " Strings to use in 'list' mode and for the |:list| command.

set number        " Print the line number in front of each line.
set numberwidth=2 " Minimal number of columns to use for the line number.

set t_vb=
set visualbell " Use visual bell instead of beeping.  The terminal code to display the visual bell is given with 't_vb'.

set encoding=utf-8 " Sets the character encoding used inside Vim.
set autowrite      " Write the contents of the file, if it has been modified.
set autoread       " When a file has been detected to have been changed outside of Vim and it has not been changed inside of Vim, automatically read it again.

set backspace=indent,eol,start " Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode.
set expandtab                  " In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
set shiftwidth=2               " Number of spaces to use for each step of (auto)indent.
set smarttab                   " When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'.
set tabstop=2                  " Number of spaces that a <Tab> in the file counts for.

set backup                             " When the 'backup' option is on, an old backup file (with the same name as the new backup file) will be deleted.
set backupdir=~/.vim/tmp/backup//      " List of directories for the backup file.
set backupskip=/tmp/*,/private/tmp/*"  " When one of the patterns matches with the name of the file which is written, no backup file is created.
set directory=~/.vim/tmp/swap/         " List of directory names for the swap file.
set noswapfile                         " Don't use a swapfile for the buffer.
set undodir=~/.vim/tmp/undo//          " List of directory names for undo files.
set undofile                           " When on, Vim automatically saves undo history to an undo file when writing a buffer to a file, and restores undo history from the same file on buffer read.

if !isdirectory(expand(&undodir))
  call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
  call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
  call mkdir(expand(&directory), "p")
endif

" Mappings
" ========

let mapleader = " "

cnoremap %% <C-r>=expand('%:h') . '/'<cr>
nnoremap // :nohlsearch<cr>
nnoremap K ht lr<cr>k$
vnoremap s S

command! -range Md5 :echo system('echo '.shellescape(join(getline(<line1>, <line2>), '\n')) . '| md5')

" Plugins
" =======

set background=dark
colorscheme solarized

let g:ctrlp_cmd                          = 'CtrlP'
let g:ctrlp_map                          = '<Leader>p'
let g:indent_guides_auto_colors          = 1
let g:indent_guides_color_change_percent = 2
let g:indent_guides_exclude_filetypes    = ['go', 'help']
let g:indent_guides_guide_size           = 1
let g:indent_guides_start_level          = 1

autocmd VimEnter,Colorscheme * highlight Search    guibg=NONE guifg=NONE gui=underline ctermfg=NONE ctermbg=NONE term=underline
autocmd VimEnter,Colorscheme * highlight IncSearch guibg=NONE guifg=NONE gui=underline ctermfg=NONE ctermbg=NONE term=underline
autocmd VimEnter,Colorscheme * highlight VertSplit ctermbg=0 guibg=#073642

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
