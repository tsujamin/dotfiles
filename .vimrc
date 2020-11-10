let iCanHazVundle=1 " Vundle install hacks
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
	echo "Installing Vundle.."
	echo ""
	silent !mkdir -p ~/.vim/bundle
	silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
	let iCanHazVundle=0
endif

set nocompatible " Vundle config start
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ntpeters/vim-better-whitespace' " :StripWhitespace
Plugin 'ciaranm/detectindent'

if iCanHazVundle == 0 " Vundle install hacks
	echo "Installing Vundles, please ignore key map error messages"
	echo ""
	:PluginInstall
endif

call vundle#end()
filetype plugin indent on " Vundle config finished

" User config start
set modelines=0 " This is a security thing

syntax on
set number " set nonumber to disable
set mouse= " Always disable mouse mode :(
set ttyfast

set encoding=utf-8
autocmd BufReadPost * :DetectIndent
let g:detectindent_preferred_indent = 4
