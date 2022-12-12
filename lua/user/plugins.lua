local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "kyazdani42/nvim-web-devicons"
  use "kyazdani42/nvim-tree.lua"
  use "akinsho/bufferline.nvim"
  use "moll/vim-bbye"

  -- Colorschemes
  -- use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
  -- use "lunarvim/darkplus.nvim"

  -- Colorschemes
  use "sainnhe/everforest"

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"

  use "kqito/vim-easy-replace"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for

  use "tclh123/vim-thrift"

  use "tpope/vim-surround"

  use "ggandor/leap.nvim"

  -- Telescope
--  use "nvim-telescope/telescope.nvim"

    --use {
      -- Fuzzy finder
      -- 'nvim-telescope/telescope.nvim',
      -- requires = {
      --   { "nvim-telescope/telescope-live-grep-args.nvim" },
      -- },
      -- config = function()
      --   require("telescope").load_extension("live_grep_args")
      -- end
      --[[ requires = { ]]
      --[[   'nvim-lua/plenary.nvim', -- Useful Lua utilities ]]
      --[[]]
      --[[   -- FZF sorter for Telescope ]]
      --[[   { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }, ]]
      --[[   'nvim-telescope/telescope-ui-select.nvim', ]]
      --[[ }, ]]
    --}

  -- Treesitter
  -- The goal of nvim-treesitter is both to provide a simple and easy way to use the interface for tree-sitter in Neovim and to provide some basic functionality such as highlighting based on it:
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  use "Yggdroot/LeaderF"

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- toggler true false
  use "rmagatti/alternate-toggler"

  -- With Wildfire you can quickly select the closest text object among a group of candidates.
  use "gcmt/wildfire.vim"

  -- 缩进竖线
  use "lukas-reineke/indent-blankline.nvim"

  -- status lines
  use "nvim-lualine/lualine.nvim"

  -- A neovim plugin to persist and toggle multiple terminals during an editing session
  use "akinsho/toggleterm.nvim"
  use "folke/which-key.nvim"

  -- 🌵 Viewer & Finder for LSP symbols and tags
  use "liuchengxu/vista.vim"

  -- 🚦 A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing.
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  }

  --[[ use "tommcdo/vim-exchange" ]]
  --[[ use "svermeulen/vim-subversive" ]]
  --[[ use "tpope/vim-surround" ]]
  --[[ use "machakann/vim-sandwich" ]]

    --[[ use({ ]]
    --[[   'ojroques/nvim-osc52', ]]
    --[[   config = function() ]]
    --[[     require('osc52').setup() ]]
    --[[     local function copy() ]]
    --[[       if vim.v.event.operator == 'y' and vim.v.event.regname == '' then ]]
    --[[         require('osc52').copy_register('"') ]]
    --[[       end ]]
    --[[     end ]]
    --[[]]
    --[[     vim.api.nvim_create_autocmd('TextYankPost', { callback = copy }) ]]
    --[[   end ]]
    --[[ }) ]]


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
