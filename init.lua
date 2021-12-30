-- Essentials
require('settings')
require('mappings')
require('packer-config')

-- Colorsceme
require('colorscheme-config.nightfox')

-- IDE basics
require('nvim-tree-config')
require('lualine-config')
require('barbar-config')
require('treesitter-config')
require('autopairs-config')

-- LSP
require('lsp-config.language-servers')
require('lsp-config.nvim-cmp')
require('lsp-config.null-ls')
