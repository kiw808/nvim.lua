require("indent_blankline").setup {
    use_treesitter = true,
    char = '¦',
    show_current_context = true,
    show_current_context_start = true,
    show_trailing_blankline_indent = false,
    filetype_exclude = {"rescript", "packer", "gitcommit"},
    buftype_exclude = {"terminal", "help", "packer", "telescopeprompt"},
}
