return {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup({
            mappings = {
                basic = true,  -- Enable basic mappings
                extra = true,  -- Enable extra mappings
            },
        })
    end
}

