local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'anyakichi/vim-surround'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  --[[ use 'kyazdani42/nvim-web-devicons' -- File icons ]]
  use 'nvim-telescope/telescope.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  use 'folke/zen-mode.nvim'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }

  use 'ryanoasis/vim-devicons'

  --[[ use 'yuttie/comfortable-motion.vim' ]]
  use 'numToStr/Comment.nvim'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use {
    'prettier/vim-prettier',
    build = 'npm install'
  }

  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'preservim/nerdtree'
  --[[ use 'Xuyuanp/nerdtree-git-plugin' ]]
  --[[ use 'tiagofumo/vim-nerdtree-syntax-highlight' ]]

  --[[ use 'projekt0n/github-nvim-theme' ]]
  use 'marko-cerovac/material.nvim'
  --[[ use 'Mofiqul/dracula.nvim' ]]
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse
  --[[ use 'navarasu/onedark.nvim' ]]
  use 'mattn/emmet-vim'

  use "lukas-reineke/indent-blankline.nvim"
  use 'anuvyklack/pretty-fold.nvim'
end)
