return {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            'neovim/nvim-lspconfig',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/nvim-cmp',
            'L3MON4D3/LuaSnip',
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
        },
        config = function()
            local lsp_zero = require('lsp-zero')
            lsp_zero.on_attach(function(client, bufnr)
                -- Custom keybindings
                local opts = {buffer = bufnr, remap = false}

                -- Navigation
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)           -- Go to definition
                vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)          -- Show references
                vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)      -- Go to implementation
                vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, opts)     -- Go to type definition

                -- Documentation and help
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)                -- Show documentation
                vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)   -- Show signature help

                -- Workspace management
                vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
                vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
                vim.keymap.set('n', '<space>wl', function()
                    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                end, opts)

                -- Code actions and modifications
                vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)       -- Rename symbol
                vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)  -- Code actions

                -- Diagnostics
                vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
                vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
                vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
                vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

                -- Format
                vim.keymap.set('n', '<space>f', function()
                    vim.lsp.buf.format { async = true }
                end, opts)
            end)

            require('mason').setup({})
            require('mason-lspconfig').setup({
                ensure_installed = {
                    'lua_ls'
                },
                handlers = {
                    lsp_zero.default_setup,
                    lua_ls = function()
                        require('lspconfig').lua_ls.setup({
                            settings = {
                                Lua = {
                                    diagnostics = {
                                        globals = { "vim" }
                                    }
                                }
                            }
                        })
                    end
                },
            })
        end
    }
}
