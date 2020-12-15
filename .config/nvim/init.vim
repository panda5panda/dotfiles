" vi互換の動作を無効にするおまじない
" 今はいらないらしいけど検証してない
" fyi: https://qiita.com/yu_suke1994/items/e0a19574994a57c8fe17
if &compatible    
  set nocompatible               " Be iMproved    
endif

syntax enable
set modifiable
set write
set encoding=utf-8
set tabstop=2
set shiftwidth=2


" Pluginディレクトリのパス    
let s:dein_dir = expand('~/.vim/dein')    
" dein.vimのパス    
let s:dein_repo_dir = s:dein_dir .  '/repos/github.com/Shougo/dein.vim'    
" tomlのディレクトリへのパス    
let s:toml_dir = expand('~/.config/nvim')    

" Required:    
execute 'set runtimepath^=' . s:dein_repo_dir    

" Required:    
if dein#load_state(s:dein_dir)    
  call dein#begin(s:dein_dir)    

  " 起動時に読み込むプラグイン群のtoml    
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

  " 利用時に読み込むプラグインのtoml
  call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})

  " Required:               
  call dein#end()           
  call dein#save_state()    
endif                        

" Required:                  
filetype plugin indent on                                   

" If you want to install not installed plugins on startup.    
if dein#check_install()                                       
  call dein#install()      
endif

let g:solarized_termcolors=256
set background=dark
colorscheme solarized

