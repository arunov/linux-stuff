"Pathogen vim
"------------
"Reference: https://github.com/tpope/vim-pathogen
"Steps: mkdir -p ~/.vim/autoload ~/.vim/bundle; \
"curl -Sso ~/.vim/autoload/pathogen.vim \
"    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
execute pathogen#infect()

"Filetype
"--------
syntax on
filetype plugin indent on "Identify filetypes (UNIX, Windows)

se ml "Modeline enables settings to be read from file

"Alert if code exceeds 80 characters
"-----------------------------------
se columns=80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"Tab lengths and indentation
"---------------------------
se ai "autoindent
se tabstop=4 "for tab
se sw=4 "for >> and <<
"se expandtab "convert tabs to spaces

"Numbering
"---------
se nu

