local map = vim.api.nvim_set_keymap
local buf_map = vim.api.nvim_buf_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

-- Move between windows
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)

-- Nvim-tree --
-- map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>e', "<cmd>lua require('barbar-config.tree').open()<CR>", opts)
map('n', '<leader>ec', "<cmd>lua require('barbar-config.tree').close()<CR>", opts)

-- Barbar --
-- Move to previous/next
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-;>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ':BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)
-- Close buffer
map('n', '<A-c>', ':BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
map('n', '<C-p>', ':BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)

-- Telescope --
map('n', '<Space>ff', ':Telescope find_files<CR>', opts)
map('n', '<Space>fg', ':Telescope live_grep<CR>', opts)

-- Toggleterm --
function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  buf_map(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  buf_map(0, 't', 'jk', [[<C-\><C-n>]], opts)
  buf_map(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  buf_map(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  buf_map(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  buf_map(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
