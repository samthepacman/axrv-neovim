return {
    "echasnovski/mini.nvim",
    config = function()
        require('mini.map').setup({
            -- Configuration options for the minimap
            -- Set the width of the minimap
            width = 10,
            -- Set the height of the minimap
            height = 10,
            -- Use icons for the minimap
            icons = {
                border = '─',
                content = '•',
            },
            -- Enable minimap on startup
            auto_start = true,
        })

        -- Optional key mappings
        vim.api.nvim_set_keymap('n', '<leader>m', ':MiniMapToggle<CR>', { noremap = true, silent = true })
    end
}
