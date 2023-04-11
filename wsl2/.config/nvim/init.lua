-- 基础设置
require('options')
-- packer 插件列表
require('plugins')
-- 快捷键配置
require('keymaps')
-- 主题
require('colorscheme')
-- 自动命令
require('autocmds')
-- 插件配置
require('config.bufferline')
require('config.lualine')
require('config.nvim-treesitter')
require("config.indent-blankline")
require('config.comment')
require('config.telescope')
require('config.nvim-autopairs')

-- 复制到windows剪贴板
vim.api.nvim_command("autocmd TextYankPost * if v:event.operator ==# 'y' | call system('/mnt/c/Windows/System32/clip.exe', @0) | endif")
vim.api.nvim_command('autocmd InsertLeave * :silent !fcitx5-remote -c')
vim.api.nvim_command('autocmd BufCreate * :silent !fcitx5-remote -c')
vim.api.nvim_command('autocmd BufEnter * :silent !fcitx5-remote -c')
vim.api.nvim_command('autocmd BufLeave * :silent !fcitx5-remote -c')

