return {
    -- Install fzf (the binary)
    {
        'junegunn/fzf',
        run = function()
            vim.fn['fzf#install']() -- Automatically install fzf
        end,
    },
    -- Install fzf.vim (Vim integration for fzf)
    {
        'junegunn/fzf.vim',
        requires = { 'junegunn/fzf' }, -- Ensure fzf is loaded first
        config = function()
            -- Optional: Set up some fzf commands or settings here
            vim.cmd [[
                command! FzfFiles call fzf#run(fzf#wrap('rg --files', fzf#vim#with_preview()))
                command! FzfBuffers call fzf#run(fzf#wrap('buffers', fzf#vim#with_preview()))
            ]]
        end,
	},
}
    
