local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- colorsheme 主题
    -- use 'joshdick/onedark.vim'
    use 'ful1e5/onedark.nvim'
  
    -------------------------- plugins -------------------------------------------
    -- nvim-tree  文件列表
    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'
    }

    -- bufferline  buffer栏
    use {
      'akinsho/bufferline.nvim',
      requires = 'kyazdani42/nvim-web-devicons'
    }

    -- treesitter 代码高亮
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }

    -- galaxyline 状态栏
    use {
        'glepnir/galaxyline.nvim',
          branch = 'main',
          requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
	    "SmiteshP/nvim-gps",
	    requires = "nvim-treesitter/nvim-treesitter"
    }
    use { 
        "rcarriga/nvim-dap-ui", 
        requires = {"mfussenegger/nvim-dap"} 
    }

    -- dashboard 启动面板
    use 'glepnir/dashboard-nvim'

    -- which-key
    use 'folke/which-key.nvim'
  
    -- telescope 搜索
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/plenary.nvim'}}
    }

    -- Comment 注释
    use 'numToStr/Comment.nvim'
    -- autopairs 自动补全括号
    use "windwp/nvim-autopairs"

    -- lspconfig
    use {
      'neovim/nvim-lspconfig', 
      'williamboman/nvim-lsp-installer'
    }
    -- nvim-cmp  代码补全
    use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
    use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
    use 'hrsh7th/cmp-path'     -- { name = 'path' }
    use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
    use 'hrsh7th/nvim-cmp'
    -- vsnip
    use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
    use 'hrsh7th/vim-vsnip'
    use 'rafamadriz/friendly-snippets'
    -- lspkind
    use 'onsails/lspkind-nvim'







    if packer_bootstrap then
      require('packer').sync()
    end
end)
