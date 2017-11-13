
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/dein.vim
if dein#load_state('~/.vim/dein/dein.vim')
  call dein#begin('~/.vim/dein/dein.vim')

  call dein#add('~/.vim/dein/dein.vim')
  call dein#add('Shougo/neocomplete.vim')
  
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

set nonumber "行番号を表示しない
set cursorline "カーソル行の背景色を変える
"set cursorcolumn "カーソル位置のカラムの背景色を変える
set laststatus=2 "ステータス行を常に表示
set cmdheight=2 "メッセージ表示欄を2行確保
set showmatch "対応する括弧を強調表示
set list "不可視文字を表示
" 不可視文字の表示記号指定
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮
set whichwrap=b,s,h,l,<,>,[,]  " 行頭行末の左右移動で行をまたぐ
set scrolloff=8                " 上下8行の視界を確保
"set mouse=a "マウスの入力を受け付ける
set smartindent
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set wrap
"移動"
noremap <c-e> $
noremap <c-a> ^
"インサートモードでも移動
inoremap <c-d> <delete>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-h> <left>
inoremap <c-l> <right>
inoremap <c-e> <c-o>$
inoremap <c-a> <c-o>^

colorscheme molokai
set t_Co=256
set encoding=utf-8

