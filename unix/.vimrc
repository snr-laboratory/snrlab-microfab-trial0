set nocompatible
source $VIMRUNTIME/vimrc_example.vim
set ignorecase
set smartcase
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nobackup
set noundofile
let &termencoding = &encoding
set encoding=utf8
set fileencodings=ucs-bom,utf-8,gb18030
" wrap long lines for display
set wrap
" wrap on word boundaries
"set linebreak
" Character at the start of lines that have been wrapped
"set showbreak=>
" Disable hard auto-wrap text and comment
set formatoptions-=tc
colorscheme elflord
filetype plugin on
filetype indent on
set mouse=""
set rtp+=/opt/local/share/fzf/vim

:let java_highlight_java_lang_ids=1
:let java_highligh_java_io=1
:let java_highlight_functions="style"
:let java_highlight_debug=1
:let java_allow_cpp_keywords=1

:syntax enable
