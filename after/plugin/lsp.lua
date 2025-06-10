local lspconfig = require('lspconfig')

-- Look for more in :Mason
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        'ts_ls',
        'lua_ls',
        'rust_analyzer',
        'csharp_ls',
        'texlab',
        'bashls',
        'pyright',
        'jsonls',
        'hls'
    }
})

-- Autocompletion capabilities
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Using the native lsp API
vim.lsp.config = vim.lsp.config or {}

-- Autocompletion
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = {
	['<C-Up>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-Down>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-Tab>'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
    ['<Tab>'] = nil,
    ['<S-Tab>'] = nil,
    ['<CR>'] = nil,
    ['<Up>'] = nil,
    ['<Down>'] = nil,
}

cmp.setup({
    mapping = cmp_mappings,
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
        { name = "nvim_lua" },
        { name = "luasnip" },
    },
})

-- Diagnostic preferences
vim.fn.sign_define("DiagnosticSignError", { text = "E", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn",  { text = "W", texthl = "DiagnosticSignWarn"  })
vim.fn.sign_define("DiagnosticSignHint",  { text = "H", texthl = "DiagnosticSignHint"  })
vim.fn.sign_define("DiagnosticSignInfo",  { text = "I", texthl = "DiagnosticSignInfo"  })

vim.diagnostic.config({
    virtual_text=false,
    signs=true,
    underline=true
})

-- Floating diagnostic window
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]]
