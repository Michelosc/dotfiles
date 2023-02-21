local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'theprimeagen/harpoon'
  use 'mbbill/undotree'
  use 'lewis6991/gitsigns.nvim'
  use 'windwp/nvim-autopairs'
  use 'numToStr/Comment.nvim'
  use 'akinsho/bufferline.nvim'
  use 'moll/vim-bbye'
  use 'akinsho/toggleterm.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'christianchiarulli/lua-dev.nvim'
  use 'b0o/SchemaStore.nvim'
  -- DAP
  use 'mfussenegger/nvim-dap'
  use 'rcarriga/nvim-dap-ui'
  use 'ravenxrz/DAPInstall.nvim'
  use 'simrat39/rust-tools.nvim'
  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'saadparwaiz1/cmp_luasnip'

  -- Snippets 
  use 'rafamadriz/friendly-snippets'
  use 'L3MON4D3/LuaSnip'

  -- LSP
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'RRethy/vim-illuminate'

  -- Java
  use 'mfussenegger/nvim-jdtls'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
