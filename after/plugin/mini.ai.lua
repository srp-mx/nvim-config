local spec_ts = require('mini.ai').gen_spec.treesitter

require('mini.ai').setup({
    custom_textobjects = {
        F = spec_ts({ a = '@function.outer', i = '@function.inner' }),
    },

    mappings = {
        around = 'a',
        inside = 'i',

        around_next = 'an',
        inside_next = 'in',
        around_last = 'al',
        inside_last = 'il',

        goto_left = 'g[',
        goto_right = 'g]'
    },

    n_lines = 50,

    search_method = 'cover_or_next',

    silent = false,
})
