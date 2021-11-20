"  _   ___     _____ __  __ ____   ____
" | \ | \ \   / /_ _|  \/  |  _ \ / ___|
" |  \| |\ \ / / | || |\/| | |_) | |
" | |\  | \ V /  | || |  | |  _ <| |___
" |_| \_|  \_/  |___|_|  |_|_| \_\\____|

source ~/.config/nvim/core/core.vim

autocmd InsertLeave * :silent !fcitx5-remote -c " 退出插入模式时禁用输入法
autocmd BufCreate *  :silent !fcitx5-remote -c " 创建 Buf 时禁用输入法
autocmd BufEnter *  :silent !fcitx5-remote -c " 进入 Buf 时禁用输入法
autocmd BufLeave *  :silent !fcitx5-remote -c " 离开 Buf 时禁用输入法






