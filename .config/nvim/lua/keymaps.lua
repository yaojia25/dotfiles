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

-- F键快捷操作
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
-- 在visual模式里粘贴不要复制
map('v','p','"_dp',opt)


-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

-- magic search
map("n", "/", "/\\v", { noremap = true, silent = false })
map("v", "/", "/\\v", { noremap = true, silent = false })


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
-- 插件配置
--------------------------------------------------------------------
local pluginKeys = {}

-- nvimTree
map('n', '<LEADER>f', ':NvimTreeToggle<CR>', opt)
-- 列表快捷键
pluginKeys.nvimTreeList = { -- 打开文件或文件夹
  { key = { "o", "<2-LeftMouse>" }, action = "edit" },
  { key = "<CR>", action = "system_open" },
  -- v分屏打开文件
  { key = "v", action = "vsplit" },
  -- h分屏打开文件
  { key = "h", action = "split" },
  -- Ignore (node_modules)
  { key = "i", action = "toggle_ignored" },
  -- Hide (dotfiles)
  { key = ".", action = "toggle_dotfiles" },
  { key = "R", action = "refresh" },
  -- 文件操作
  { key = "a", action = "create" },
  { key = "d", action = "remove" },
  { key = "r", action = "rename" },
  { key = "x", action = "cut" },
  { key = "c", action = "copy" },
  { key = "p", action = "paste" },
  { key = "y", action = "copy_name" },
  { key = "Y", action = "copy_path" },
  { key = "gy", action = "copy_absolute_path" },
  { key = "I", action = "toggle_file_info" },
  { key = "n", action = "tabnew" },
  -- 进入下一级
  { key = { "]" }, action = "cd" },
  -- 进入上一级
  { key = { "[" }, action = "dir_up" },
}
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
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)
-- Telescope 列表中 插入模式快捷键
pluginKeys.telescopeList = {
  i = {
    -- 上下移动
    ["<C-j>"] = "move_selection_next",
    ["<C-k>"] = "move_selection_previous",
    ["<C-n>"] = "move_selection_next",
    ["<C-p>"] = "move_selection_previous",
    -- 历史记录
    ["<Down>"] = "cycle_history_next",
    ["<Up>"] = "cycle_history_prev",
    -- 关闭窗口
    -- ["<esc>"] = actions.close,
    ["<C-c>"] = "close",
    -- 预览窗口上下滚动
    ["<C-u>"] = "preview_scrolling_up",
    ["<C-d>"] = "preview_scrolling_down",
  },
}

-- 代码注释插件
-- see ./lua/config/comment.lua
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
