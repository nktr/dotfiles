
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/dein.vim
if dein#load_state('~/.vim/dein/dein.vim')
  call dein#begin('~/.vim/dein/dein.vim')

  call dein#add('~/.vim/dein/dein.vim')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/neomru.vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

let g:neocomplete#enable_at_startup=1 "自動補完機能を有効にする

" バッファ一覧
noremap <C-P> :Unite buffer<CR>
" ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
" sourcesを「今開いているファイルのディレクトリ」とする
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

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

