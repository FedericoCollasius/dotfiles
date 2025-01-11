return {
    {
        "williamboman/mason.nvim",
        config = true,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "pyright",
            },
            automatic_installation = true,
        },
    },

    -- Core LSP configuration
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",     -- Enables LSP completion
            "hrsh7th/nvim-cmp",         -- The completion engine
            "L3MON4D3/LuaSnip",         -- Snippet engine required by nvim-cmp
        },
        config = function()
            local lspconfig = require('lspconfig')
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lsp_group = vim.api.nvim_create_augroup('UserLspConfig', {})

            vim.api.nvim_create_autocmd('LspAttach', {
                group = lsp_group,
                callback = function(event)
                    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {
                        desc = 'Hover documentation',
                        buffer = true
                    })

                    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {
                        desc = 'Go to definition',
                        buffer = true
                    })

                    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {
                        desc = 'Code actions',
                        buffer = true
                    })
                    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {
                        desc = 'Rename symbol',
                        buffer = true
                    })
                end,
            })

            require('cmp').setup({
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end,
                },
                mapping = require('cmp').mapping.preset.insert({
                    ['<C-Space>'] = require('cmp').mapping.complete(),
                    ['<CR>'] = require('cmp').mapping.confirm({ select = true }),
                }),
                sources = {
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                },
            })

            require('mason-lspconfig').setup_handlers({
                function(server_name)
                    if server_name ~= "lua_ls" then
                        lspconfig[server_name].setup({
                            capabilities = capabilities,
                        })
                    end
                end,

                ["lua_ls"] = function()
                    lspconfig.lua_ls.setup({
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { 'vim' },  -- Recognizes 'vim' global
                                },
                                workspace = {
                                    library = vim.api.nvim_get_runtime_file("", true),
                                },
                            },
                        },
                    })
                end,
            })
        end,
    },
}
