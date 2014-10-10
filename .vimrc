" Theme
" -----
colorscheme desert

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
"Extra white spaces
highlight ExtraWhitespace ctermbg=red guibg=Brown
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\S\zs\s\+$/
au InsertEnter * match ExtraWhitespace /\S\zs\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\S\zs\s\+$/

"ctags
"-----
set tags=./tags;

"clang-format
"------------
map <C-K> :pyf <path-to-this-file>/clang-format.py<CR>
imap <C-K> <ESC>:pyf <path-to-this-file>/clang-format.py<CR>i

