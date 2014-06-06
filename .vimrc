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

"Alignment and indentation
"-------------------------
se ai "autoindent
se tabstop=4 "tab size
se sw=4 "indentation size
se expandtab "convert tabs to spaces
se softtabstop=4 "backspace deletes multiple spaces for indents
" Other tab stuff: smarttab - tabs for indentation, spaces for align
se pastetoggle=<F2> "toggle paste and type settings in insert mode

"Lines
"-----
se nu "Line number
se cul "Current line

"Highlight
"---------
"Exceed 100 characters in a line
"se columns=100
highlight OverLength ctermbg=blue ctermfg=white
match OverLength /\%101v.\+/

