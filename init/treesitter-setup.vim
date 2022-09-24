lua << EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = { "norg", "org"},
    highlight = { 
        enable = true, 
        additional_vim_regex_highlighting = {'org'}, -- Required for spellcheck, some LaTex highlights and code block highlights that do not have ts grammar
    },
    indent = {
        enable = false
    }
}
EOF
