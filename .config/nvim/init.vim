lua require('options')
lua require('plugins')
lua require('keymaps')
lua require('theme')

lua require('plugin-config/galaxyline')
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/dashboard')
lua require('lsp/setup')

autocmd InsertLeave * :silent !fcitx5-remote -c 
autocmd BufCreate *  :silent !fcitx5-remote -c 
autocmd BufEnter *  :silent !fcitx5-remote -c 
autocmd BufLeave *  :silent !fcitx5-remote -c 