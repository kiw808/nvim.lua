vim.g.nvim_tree_git_hl = 1
require'nvim-tree'.setup {
    auto_close = true,
    hijack_cursor = true,
    diagnostics = {
        enable = true,
    },
    git = {
        ignore = false,
    },
}
