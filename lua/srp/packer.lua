-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Plenary (filepath stuff)
    use 'nvim-lua/plenary.nvim'

    -- Telescope (file navigation)
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Colors
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require("rose-pine").setup()
            vim.cmd('colorscheme rose-pine')
        end
    })

    -- Syntax highlights
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')

    -- Harpoon (file navigation)
    use('ThePrimeagen/harpoon')

    -- Undotree
    use('mbbill/undotree')

    -- Vim fugitive
    use('tpope/vim-fugitive')

    -- Language server (lsp)
    --use {
        --'VonHeikemen/lsp-zero.nvim',
        --branch = 'v1.x',
        --requires = {
            ---- LSP Support
            --{'neovim/nvim-lspconfig'},             -- Required
            --{'williamboman/mason.nvim'},           -- Optional
            --{'williamboman/mason-lspconfig.nvim'}, -- Optional

            ---- Autocompletion
            --{'hrsh7th/nvim-cmp'},         -- Required
            --{'hrsh7th/cmp-nvim-lsp'},     -- Required
            --{'hrsh7th/cmp-buffer'},       -- Optional
            --{'hrsh7th/cmp-path'},         -- Optional
            --{'saadparwaiz1/cmp_luasnip'}, -- Optional
            --{'hrsh7th/cmp-nvim-lua'},     -- Optional

            ---- Snippets
            --{'L3MON4D3/LuaSnip'},             -- Required
            --{'rafamadriz/friendly-snippets'}, -- Optional
        --}
    --}

    -- LSP server management
    use { "williamboman/mason.nvim" }
    use { "williamboman/mason-lspconfig.nvim" }

    -- Some defaults
    use { "neovim/nvim-lspconfig" }

    -- Autocompletion
    use { "hrsh7th/nvim-cmp" }
    use { "hrsh7th/cmp-nvim-lsp" }
    use { "hrsh7th/cmp-buffer" }
    use { "hrsh7th/cmp-path" }
    use { "saadparwaiz1/cmp_luasnip" }
    use { "hrsh7th/cmp-nvim-lua" }

    -- Snippets
    use { "L3MON4D3/LuaSnip" }
    use { "rafamadriz/friendly-snippets" }

    -- Java >:(
    use('mfussenegger/nvim-jdtls')

    -- Coq u.u
    use('whonore/Coqtail')
    use('tomtomjhj/coq-lsp.nvim')

    -- Comments
    use('preservim/nerdcommenter')

    -- Oil
    use({
        "stevearc/oil.nvim",
        config = function()
            require("oil").setup({
                default_file_explorer = true,
                skip_confirm_for_simple_edits = true,
                view_options = {
                    show_hidden = true,
                    natural_order = true,
                },
                win_options = {
                    wrap = true,
                },
                keymaps = {
                    ["g?"] = "actions.show_help",
                    ["<CR>"] = "actions.select",
                    ["sv"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in vertical split" },
                    ["sh"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in horizontal split" },
                    ["<S-CR>"] = "actions.preview",
                    ["<C-Down>"] = "actions.preview_scroll_down",
                    ["<C-Up>"] = "actions.preview_scroll_up",
                    ["<leader>nn"] = "actions.close",
                    ["<leader>nr"] = "actions.refresh",
                    ["-"] = "actions.parent",
                    ["<leader>CD"] = "actions.open_cwd",
                    ["<leader>cd"] = "actions.cd",
                    ["gx"] = "actions.open_external",
                    ["gs"] = "actions.change_sort",
                    ["g."] = "actions.toggle_hidden",
                },
                use_default_keymaps = false,
            })
        end,
        requires = {
            {'nvim-tree/nvim-web-devicons'}
        },
    })

    -- Extension to 'a' and 'i' commands
    use({
        'echasnovski/mini.ai',
        branch = 'stable',
        after = "nvim-treesitter",
        requires = {
            {"nvim-treesitter/nvim-treesitter"},
            {"nvim-treesitter/nvim-treesitter-textobjects"}
        }
    })

    -- Start page
    use('mhinz/vim-startify')

    -- Live Server
    use({
        "aurum77/live-server.nvim",
        run = function()
            require "live_server.util".install()
        end,
        cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
    })

    -- Emojis
    use({
        'xiyaowong/telescope-emoji.nvim',
        config = function()
            require("telescope").load_extension("emoji")
        end
    })
end)
