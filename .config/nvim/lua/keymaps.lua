-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- leader键
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

map("n", "<F2>", ":source ~/.config/nvim/init.lua<CR>", opt)
map("n", "<F3>", ":PackerSync<CR>", opt)
map("n", "<F4>", ":LspInstallInfo<CR>", opt)
map("n", "<F5>", ":!python3 %<CR>" ,opt)


-- 移动
map("n", "J", "5j", opt)
map("n", "K", "5k", opt)

-- 保存,推出
map('i','<C-s>','<ESC>:w!<CR>i',opt)
map('n','<C-s>',':w<CR>',opt)
map('n','<C-q>',':q<CR>',opt)
-- 复制,粘贴
map('v','C-c',':"+y',opt)
map('v','C-x',':"+d',opt)
map('v','C-v',':"+p',opt)


-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- magic search
map("n", "/", "/\\v", opt)
map("v", "/", "/\\v", opt)

------------------------------------------------------------------
-- windows 分屏快捷键
------------------------------------------------------------------
-- 取消 s 默认功能
map("n", "s", "", opt)
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- 关闭当前 窗口
map("n", "sc", "<C-w>c", opt)
-- 关闭其他 窗口
map("n", "so", "<C-w>o", opt) -- close others

-- alt + hjkl  窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- 比例控制
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)
-- 相等比例
map("n", "s=", "<C-w>=", opt)



--------------------------------------------------------------------
-- 插件快捷键
--------------------------------------------------------------------
-- nvimTree
map('n', '<LEADER>f', ':NvimTreeToggle<CR>', opt)

-- bufferline 左右Tab切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

-- "moll/vim-bbye" 关闭当前 buffer
map("n", "<leader>bc", ":Bdelete!<CR>", opt)
map("n", "<C-w>", ":Bdelete!<CR>", opt)

-- nvim-treesitter 代码格式化
map("n", "<leader>i", "gg=G", opt)

-- Telescope
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- map("n", "<leader>f", ":Telescope find_files<CR>", opt)
-- map("n", "<leader>g", ":Telescope live_grep<CR>", opt)


local pluginKeys = {}

-- 代码注释插件
-- see ./lua/plugin-config/comment.lua
pluginKeys.comment = {
  -- normal 模式
  toggler = {
    line = '<leader>/',
    block = '<leader>bc'
  },
  -- visual 模式
  opleader = {
    -- ctrl + /
    line = '<C-/>',
    block = 'bc'
  }
}
-- ctrl + /
map("n", "<C-_>", "gcc", {noremap = false})
map("v", "<C-_>", "gcc", {noremap = false})

return pluginKeys
