-- ~/.config/nvim/lua/keybindings.lua

local wk = require("which-key")

-- Setup Which Key
wk.setup({
    plugins = {
        marks = true, -- Shows a list of marks
        registers = true, -- Shows a list of registers
        spelling = {
            enabled = true, -- enabling spelling suggestions
            suggestions = 20, -- maximum number of suggestions
        },
    },
    key_labels = { -- Override the labels of keys to be displayed
        ["<leader>"] = "SPC",
        ["<C-k>"] = "CTRL+k",
    },
    timeout = {
        enable = true, -- enable timeout
        length = 300, -- timeout length in milliseconds
    },
})

-- Keybindings
local opts = { noremap = true, silent = true }

-- General keybindings
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', opts)          -- Save file
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', opts)          -- Quit
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts) -- Toggle file tree

-- Keybinds registered with Which Key
wk.register({
    w = { ":w<CR>", "Save" },
    q = { ":q<CR>", "Quit" },
    e = { ":NvimTreeToggle<CR>", "Toggle File Tree" },

    f = {
        name = "Find",
        f = { ":Telescope find_files<CR>", "Find Files" },
        g = { ":Telescope live_grep<CR>", "Live Grep" },
        b = { ":Telescope buffers<CR>", "List Buffers" },
    },

    b = {
        name = "Buffers",
        d = { ":bd<CR>", "Delete Buffer" },
    },

    l = {
        name = "LSP",
        d = { ":lua vim.lsp.buf.definition()<CR>", "Go to Definition" },
        i = { ":lua vim.lsp.buf.implementation()<CR>", "Go to Implementation" },
        r = { ":lua vim.lsp.buf.references()<CR>", "Show References" },
        n = { ":lua vim.lsp.buf.rename()<CR>", "Rename" },
    },

    t = { ":ToggleTerm<CR>", "Toggle Terminal" }, -- Terminal
    c = { ":CommentToggle<CR>", "Toggle Comment" }, -- Comments

    h = {
        name = "Window Navigation",
        h = { "<C-w>h", "Left" },
        j = { "<C-w>j", "Down" },
        k = { "<C-w>k", "Up" },
        l = { "<C-w>l", "Right" },
    },

    s = {
        name = "Split",
        v = { ":vsplit<CR>", "Vertical Split" },
        h = { ":split<CR>", "Horizontal Split" },
    },
}, { prefix = "<leader>" })  -- Set prefix for Which Key

