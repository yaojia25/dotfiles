local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- colorsheme
    -- use 'joshdick/onedark.vim'
    use 'ful1e5/onedark.nvim'
  
    -------------------------- plugins -------------------------------------------
    -- nvim-tree
    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'
    }
    -- bufferline
    use {
      'akinsho/bufferline.nvim',
      requires = 'kyazdani42/nvim-web-devicons'
    }
    -- treesitter
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }
    use {
        'glepnir/galaxyline.nvim',
          branch = 'main',
          -- some optional icons
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
    use 'glepnir/dashboard-nvim'


    -- which-key
    use 'folke/which-key.nvim'
  
    -- telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/plenary.nvim'}}
    }
    
    -- lspconfig
    use {
      'neovim/nvim-lspconfig', 
      'williamboman/nvim-lsp-installer'
    }

    if packer_bootstrap then
      require('packer').sync()
    end
end)