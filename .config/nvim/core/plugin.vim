"底部状态栏 vim-airline'
let g:airline_theme='onedark'
set laststatus=2                             " 永远显示状态栏
let g:airline_powerline_fonts = 1            " 支持 powerline 字体
let g:airline#extensions#tabline#enabled = 1 " 关闭顶部buffer栏，使用vim-buffet代替
let g:airline#extensions#tabline#show_tab_nr = 1 " 关闭顶部buffer栏，使用vim-buffet代替
" let g:airline_left_sep = '▶'
" let g:airline_left_sep = '▶'
" let g:airline_left_alt_sep = '❯'
" let g:airline_right_sep = '◀'
" let g:airline_right_alt_sep = '❮'
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

"Dashboard设置
let g:dashboard_custom_header = [
			\ '',
			\ '     _ ___    _ __   ____     _____ __  __  ',
            \ '    | |_ _|  / \\ \ / /\ \   / /_ _|  \/  | ',
            \ ' _  | || |  / _ \\ V /  \ \ / / | || |\/| | ',
            \ '| |_| || | / ___ \| |    \ V /  | || |  | | ',
            \ ' \___/|___/_/   \_\_|     \_/  |___|_|  |_| ',
			\ '',
			\ ]
" Ranger 设置
let g:ranger_map_keys = 0

