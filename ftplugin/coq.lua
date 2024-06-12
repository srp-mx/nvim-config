--local map = require('utils').map

vim.api.nvim_set_var('coqtail_nomap', 1)
vim.api.nvim_set_var('coqtail_noimap', 1)

require'coq-lsp'.setup {
  -- The configuration for coq-lsp.nvim.
  -- The following is the default configuration.
  --coq_lsp_nvim = {
    ---- to be added
  --},

  -- The configuration forwarded to `:help lspconfig-setup`.
  -- The following is an example.
  lsp = {
    on_attach = function(client, bufnr)
        local opts = {buffer = bufnr, remap = false, silent = true}
        vim.keymap.set("n", "<C-Down>", ":CoqNext<CR>:CoqJumpToEnd<CR>", opts)
        vim.keymap.set("n", "<C-Up>", ":CoqUndo<CR>:CoqJumpToEnd<CR>", opts)
        vim.keymap.set("n", "<C-Right>", ":CoqToLine<CR>:CoqJumpToEnd<CR>", opts)
        vim.keymap.set("n", "<C-c>", ":CoqInterrupt<CR>:CoqJumpToEnd<CR>", opts)
    end,
    -- coq-lsp server initialization configurations, defined here:
    -- https://github.com/ejgallego/coq-lsp/blob/main/editor/code/src/config.ts#L3
    -- Documentations are at https://github.com/ejgallego/coq-lsp/blob/main/editor/code/package.json.
    init_options = {
      show_notices_as_diagnostics = true,
    },
    autostart = true,
  },
}

-- info: https://github.com/whonore/Coqtail
