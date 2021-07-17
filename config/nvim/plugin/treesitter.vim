lua <<EOF
require 'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        disable = {}
    },
    indent = {
        enable = false,
        disable = {}
    },
    ensufe_installed = {
        "html",
        "css",
        "javascript",
        "tsx",
        "c",
        "cpp",
        "php",
        "python",
        "rust",
        "go",
        "bash",
        "json"
    }
}
EOF
