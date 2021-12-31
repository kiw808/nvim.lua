vim.g.nvim_tree_git_hl = 1
require'nvim-tree'.setup {
    auto_close = true,
    diagnostics = {
        enable = true,
    },
    git = {
        ignore = false,
    },
}
