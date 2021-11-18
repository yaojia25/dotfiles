"=================================
"==   插件   
"================================= 
call plug#begin('~/.config/nvim/plugged')

" 主题
Plug 'joshdick/onedark.vim'

" 彩虹括号
Plug 'luochen1990/rainbow'

" 底部状态栏
Plug 'vim-airline/vim-airline'

" 目录插件
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" 括号自动补全
Plug 'jiangmiao/auto-pairs' 

" 多光标
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" 开始界面
Plug 'mhinz/vim-startify'

" buffer状态栏的图标显示
Plug 'ryanoasis/vim-devicons'

" buffer 状态栏显示
" Plug 'hardcoreplayers/vim-buffet'

" nvim 启动界面
"Plug 'hardcoreplayers/dashboard-nvim'

Plug 'liuchengxu/vim-which-key'

" 文件树
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

call plug#end()
