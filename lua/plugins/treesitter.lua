return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = {
                "c", "cpp", "python", "javascript", "typescript", "html", "css", "lua", "bash"
            },
            highlight = {
                enable = true,          -- Enable highlighting
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = true,          -- Enable indentation
            },
        })
    end
}
