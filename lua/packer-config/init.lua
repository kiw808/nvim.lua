return require'packer'.startup(function()
    use 'wbthomason/packer.nvim'

    -- Colorschemes
    use 'EdenEast/nightfox.nvim'
    use 'navarasu/onedark.nvim'

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

    -- LSP plugins
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'onsails/lspkind-nvim'
end)
