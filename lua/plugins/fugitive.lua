return {
    'tpope/vim-fugitive',
    config = function()
        -- Optional custom mappings for Git commands
        vim.cmd([[
            nnoremap <leader>gs :Gstatus<CR>
            nnoremap <leader>gc :Gcommit<CR>
            nnoremap <leader>gp :Gpush<CR>
            nnoremap <leader>gl :Glog<CR>
        ]])
    end
}
