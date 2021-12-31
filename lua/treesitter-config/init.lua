require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        'lua',
        'python',
        'javascript',
        'typescript',
        'tsx',
        'html',
        'css',
        'scss',
        'php',
        'graphql',
        'json',
        'yaml',
        'ocaml',
        'ocaml_interface',
        'rescript',
    },

    sync_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    rainbow = {
        enable = true,
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
    },
}
