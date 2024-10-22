return {
    'neovim/nvim-lspconfig',
    config = function()
        local lspconfig = require('lspconfig')

        -- Example configuration for different languages
        lspconfig.ts_ls.setup{
            on_attach = function(client, bufnr)
                -- Key mappings for LSP
                local bufopts = { noremap=true, silent=true, buffer=bufnr }
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
                vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
                vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
            end,
        }

        lspconfig.pylsp.setup{
		settings = {
	          pylsp = {
                    plugins = {
                        pyflakes = { enabled = true },
                        autopep8 = { enabled = true },
                        jedi = { enabled = true },
                    },
                },
            },
	}    -- Python language server
        lspconfig.clangd.setup{}     -- C/C++ language server
    end
}
