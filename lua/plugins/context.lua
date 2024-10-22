return {
    'nvim-treesitter/nvim-treesitter-context',
    config = function()
        require'treesitter-context'.setup {
            enable = true,
            max_lines = 0, -- Keep this 0 to always show context
            min_lines = 0, -- Minimum number of lines to trigger context
        }
    end
}
