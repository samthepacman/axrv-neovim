return {
    'lewis6991/gitsigns.nvim',
    config = function()
        require'gitsigns'.setup {
            signs = {
                add = { text = '+' },
                change = { text = '~' },
                delete = { text = '_' },
                topdelete = { text = '‾' },
                changedelete = { text = '~' },
            },
            on_attach = function(bufnr)
                local gs = package.loaded.gitsigns
                vim.keymap.set('n', '<leader>gp', gs.preview_hunk, { buffer = bufnr, desc = 'Preview hunk' })
                vim.keymap.set('n', '<leader>gS', gs.stage_hunk, { buffer = bufnr, desc = 'Stage hunk' })
                vim.keymap.set('n', '<leader>gr', gs.undo_stage_hunk, { buffer = bufnr, desc = 'Undo stage hunk' })
                vim.keymap.set('n', '<leader>gd', gs.reset_hunk, { buffer = bufnr, desc = 'Reset hunk' })
            end,
        }
    end
}
