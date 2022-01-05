local lsp_installer = require "nvim-lsp-installer"

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  client.resolved_capabilities.document_formatting = false
  client.resolved_capabilities.document_range_formatting = false


  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-s>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>d', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  buf_set_keymap('n', '<space>rf', ':RescriptFormat<CR>', opts)

  -- lspsaga
  local map = vim.api.nvim_buf_set_keymap
  map(0, "n", "<space>rn", "<cmd>Lspsaga rename<cr>", opts)
  map(0, "n", "<leader>ca", "<cmd>Lspsaga code_action<cr>", opts)
  map(0, "n", "K",  "<cmd>Lspsaga hover_doc<cr>", opts)
  map(0, "n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", opts)
  map(0, "n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
  map(0, "n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
  map(0, "n", "gs", "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>", opts)
  map(0, "n", "gh", "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local servers = {
    'sumneko_lua',
    'pyright',
    'tsserver',
    'html',
    'intelephense',
    'cssls',
    'rescriptls'
}

for _, name in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found then
    if not server:is_installed() then
      print("Installing " .. name)
      server:install()
    end
  end
end

local enhance_server_opts = {
  ["rescriptls"] = function(opts)
      opts.cmd = {
        'node',
        '/home/pierremu/.local/share/nvim/site/pack/packer/start/vim-rescript/server/out/server.js',
        '--stdio'
      }
      opts.filetypes = { "rescript" }
  end,
}

lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = on_attach,
    capabilities = capabilities,
  }

  if enhance_server_opts[server.name] then
    enhance_server_opts[server.name](opts)
  end

  server:setup(opts)
end)
