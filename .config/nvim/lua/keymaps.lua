-- leader key 为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}
-- map('模式','按键','映射为XX',opt)

map("n", "<F2>", ":source ~/.config/nvim/init.vim<CR>", opt)
map("n", "<F3>", ":PackerSync<CR>", opt)
map("n", "<F4>", ":LspInstallInfo<CR>", opt)

-- 移动
map("n", "<C-j>", "5j", opt)
map("n", "<C-k>", "5k", opt)

-- 保存
map('i','<C-s>','<ESC>:w!<CR>i',opt)
map('n','<C-s>',':w<CR>',opt)
map('n','<C-q>',':q<CR>',opt)
map('n','Q',':wq<CR>',opt)
map('v','C-c','"+y',opt)
map('v','C-x','"+d',opt)


-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- magic search
map("n", "/", "/\v", opt)
map("v", "/", "/\v", opt)

-- windows 分屏快捷键
map("n", "<LEADER>v", ":vsp<CR>", opt)
map("n", "<LEADER>h", ":sp<CR>", opt)

-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt) -- close others

-- 比例控制
map("n", "<LEADER>.", ":vertical resize +20<CR>", opt)
map("n", "<LEADER>,", ":vertical resize -20<CR>", opt)
map("n", "s=", "<C-w>=", opt)
map("n", "<LEADER>j", ":resize +10<CR>", opt)
map("n", "<LEADER>k", ":resize -10<CR>", opt)

-- alt + hjkl  窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

--------------------------------------------------------------------
-- 插件快捷键
-- nvimTree
map('n', '<LEADER>f', ':NvimTreeToggle<CR>', opt)

-- bufferline 左右Tab切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "<C-w>", ":bd<CR>", opt)

-- nvim-treesitter 代码格式化
map("n", "<leader>i", "gg=G", opt)

-- Telescope
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- map("n", "<leader>f", ":Telescope find_files<CR>", opt)
map("n", "<leader>g", ":Telescope live_grep<CR>", opt)


local pluginKeys = {}

-- 代码注释插件
-- see ./lua/plugin-config/comment.lua
pluginKeys.comment = {
  -- normal 模式
  toggler = {
    line = '<leader>c',
    block = '<leader>bc'
  },
  -- visual 模式
  opleader = {
    -- ctrl + /
    line = '<C-_>',
    block = 'bc'
  }
}

return pluginKeys