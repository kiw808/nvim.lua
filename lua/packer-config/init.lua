return require'packer'.startup(function()
    use 'wbthomason/packer.nvim'

    -- Colorschemes
    use 'EdenEast/nightfox.nvim'
    use 'navarasu/onedark.nvim'
    use 'marko-cerovac/material.nvim'

    -- Required
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lua/plenary.nvim'

    -- IDE
    use 'kyazdani42/nvim-tree.lua'
    use 'nvim-lualine/lualine.nvim'
    use 'romgrk/barbar.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'p00f/nvim-ts-rainbow'
    use 'windwp/nvim-autopairs'
    use 'nvim-telescope/telescope.nvim'
    use 'akinsho/toggleterm.nvim'
    use 'tpope/vim-fugitive'
    use 'lewis6991/gitsigns.nvim'
    use 'sunjon/shade.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'numToStr/Comment.nvim'
    use "blackCauldron7/surround.nvim"

    -- LSP plugins
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'onsails/lspkind-nvim'
    use { 'tami5/lspsaga.nvim', branch = 'nvim6.0' }
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'rescript-lang/vim-rescript'
    use 'nkrkv/nvim-treesitter-rescript'
end)
