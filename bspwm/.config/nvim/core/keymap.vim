" Vim 的快捷键修改，包括插件的快捷键
" map ｛lhs｝｛rhs｝，将 lhs 映射成rhs
" noremap 同map一样，非递归映射，不会冲突。推荐使用这一个。
"     ^
"     k
" < h   l >
"     j
"     v

let g:mapleader = "\\"   " 修改Leader键为空格键\<Space>
let g:maplocalleader = ','

" 普通
noremap W 5k
noremap S 5j
map <F2> :source ~/.config/nvim/init.vim<CR>
map <F3> :PlugInstall<CR>
map <F4> :PlugUpdate<CR>

" 保存退出相关
inoremap <C-s> <Esc>:w!<CR>i
nnoremap <C-s> :w<CR>        
nnoremap <C-q> :q<CR>   
nnoremap Q :wq<CR> 
noremap <C-c> "+y       " 复制到系统粘贴板
noremap <C-x> "+d      " 复制到系统粘贴板

" 分屏相关
noremap <LOCALLEADER>/ :vsplit<CR> "向右分屏
noremap <LOCALLEADER>- :split<CR> "向下分屏
noremap <silent> <Tab> :bn<CR>  " 插入模式下           
noremap <silent> <S-Tab> :bp<CR>            
noremap <LEADER><Tab> :tabn<CR> "下一个 Tab
noremap <LEADER><S-Tab> :tabp<CR> "上一个 Tab
noremap <LEADER>v :CHADopen<CR> 

"  插件相关
noremap <LEADER>f <ESC>:Ranger<CR> " 启动 Ranger 
" vim-witch-key
nnoremap <silent> <LEADER>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <LOCALLEADER> :<c-u>WhichKey  ','<CR>








         
