

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'


  -- TELESCOPE
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {'nvim-telescope/telescope-symbols.nvim'}

  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }

  -- LSP
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  {'neovim/nvim-lspconfig'},
		  {
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
	  },
	  {'williamboman/mason-lspconfig.nvim'},
	  {'hrsh7th/nvim-cmp'},
	  {'hrsh7th/cmp-nvim-lsp'},
	  {'L3MON4D3/LuaSnip'},
     }
}

  -- LINES
  use({
      "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
      config = function()
          require("lsp_lines").setup()
      end,
  })

  -- SURROUND
  use({
      "kylechui/nvim-surround",
      tag = "*", 
      config = function()
          require("nvim-surround").setup({
          })
      end
  })

  -- PAIRS
  use { "windwp/nvim-autopairs",
  config = function() require("nvim-autopairs").setup {} end
  }

  -- OUTLINE
  use 'simrat39/symbols-outline.nvim'
  -- HARPOON
  use('theprimeagen/harpoon')
  -- UNDO TREE
  use('mbbill/undotree')
  -- COMMENT

  -- STATUS LINE
  use 'feline-nvim/feline.nvim'

-- FOLD
use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

  -- TREE
  use {
      'nvim-tree/nvim-tree.lua',
  }
  use 'nvim-tree/nvim-web-devicons'

--  -- DAP (yes, dap)
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    -- use 'rcarriga/nvim-dap-ui'
--    use 'nvim-lua/plenary.nvim'
--    use 'simrat39/rust-tools.nvim'
  -- COLOR SCHEMES ---------------------------------------------------------------
  -- nord fox
  use "EdenEast/nightfox.nvim"
  use 'AlexvZyl/nordic.nvim'

end)
