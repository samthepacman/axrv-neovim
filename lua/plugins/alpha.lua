-- ~/.config/nvim/lua/plugins/alpha-nvim.lua
return {
    {
        'goolord/alpha-nvim',
        dependencies = {
            'echasnovski/mini.icons',  -- Provides additional icon support
            'nvim-lua/plenary.nvim',   -- Utility functions used by various plugins
        },
        config = function()
            local alpha = require('alpha')
            local theta = require('alpha.themes.theta')

            -- Customize the theme configuration as needed
            theta.config.layout[1].val = 8  -- Example customization: adjust the spacing

            alpha.setup(theta.config)
        end,
    },
}
