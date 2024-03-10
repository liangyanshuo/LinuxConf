"set fileencodings=ucs-bom,utf-8,utf-16,gb2312,gbk,gb18030,latin1 
set nocompatible 
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'taglist.vim'
Plugin 'tomasr/molokai'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/rainbow_parentheses.vim'
"Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
"Plugin 'hynek/vim-python-pep8-indent'
"Plugin 'nvie/vim-flake8'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'majutsushi/tagbar'

call vundle#end()
filetype plugin indent on
color molokai
 
set number numberwidth=5
nnoremap <silent> <C-n>    :set nu!<CR> 
set pastetoggle=<F5>
nmap <F9> :TagbarToggle<CR>
" 启动时自动focus
let g:tagbar_autofocus = 1
"set mouse=a
set cmdheight=1
set laststatus=2
 
set showcmd
autocmd BufEnter * silent! lcd %:p:h
 
set incsearch hlsearch
set showmatch matchpairs+=<:>
 
set shiftwidth=4 tabstop=4 softtabstop=4
set expandtab
set autoindent
set clipboard=unnamedplus
set fileformat=unix
set fenc=utf-8
set encoding=utf-8 
set t_Co=256
set showcmd         " 输入的命令显示出来，看的清楚些  "
"set cul "高亮光标所在行 会变卡
"autocmd InsertEnter * se cul    " 用浅色高亮当前行  
let python_highlight_all=1
syntax on

let g:indentLine_char='|'
let g:indentLine_enabled=0

" 彩虹括号
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],    
    \ ]
" 不加入这行, 防止黑色括号出现, 很难识别
" \ ['black',       'SeaGreen3'],
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" 方便缩进
vnoremap < <gv 
vnoremap > >gv

" 语法检测 暂不使用
" execute pathogen#infect()
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_python_checkers=['python3']
" let g:syntastic_python_flake8_args='--ignore W391,E501 --max-line-length 119'

" 自动补全
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=preview,menu 
set completeopt=longest,menu
""python补全
let g:pydiction_location = '~/.vim/after/complete-dict'
let g:pydiction_menu_height = 20
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
" ycm 此处要设置成python版本2.7，不要设置成python3了
let g:ycm_path_to_python_interpreter="python"
"Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" 文件搜索插件配置
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

if has("autocmd")
  " Highlight TODO, FIXME, NOTE, etc.
  if v:version > 701
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|DONE\|XXX\|BUG\|HACK\)')
    autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\|NOTICE\)')
  endif
endif

" i 插入 o 新建一行插入
" <leader> is \  <CR> is  回车
" <c-right> 右移一个单词 ; 0 行首 ; $ 行尾 ; w b 行内移动一个单词
" VISUAL 模式下 选中,y复制，d删除，\cc注释，\cu解注释,>缩进
" NORMAL 模式下 ~改变大小写


