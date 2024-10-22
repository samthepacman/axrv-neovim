local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- Basic Movement
map('n', '<C-j>', 'j', default_opts)          -- Move down
map('n', '<C-k>', 'k', default_opts)          -- Move up
map('n', '<C-h>', 'h', default_opts)          -- Move left
map('n', '<C-l>', 'l', default_opts)          -- Move right

-- Better window navigation
map('n', '<C-w>h', '<C-w>h', default_opts)    -- Move to left window
map('n', '<C-w>j', '<C-w>j', default_opts)    -- Move to bottom window
map('n', '<C-w>k', '<C-w>k', default_opts)    -- Move to top window
map('n', '<C-w>l', '<C-w>l', default_opts)    -- Move to right window

-- Easy Macros
map('n', 'q', 'q', default_opts)               -- Start recording macro
map('n', 'Q', 'Q', default_opts)               -- Stop recording macro
map('n', '<leader>r', '@q', default_opts)      -- Replay macro

-- NeoTree
map('n', '<leader>e', ':Neotree toggle<CR>', default_opts)  -- Toggle NeoTree
map('n', '<leader>f', ':Neotree focus<CR>', default_opts)   -- Focus on NeoTree

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', default_opts)       -- Find files
map('n', '<leader>fg', ':Telescope live_grep<CR>', default_opts)        -- Live grep
map('n', '<leader>fb', ':Telescope buffers<CR>', default_opts)          -- List buffers
map('n', '<leader>fh', ':Telescope help_tags<CR>', default_opts)       -- Help tags

-- Other Useful Mappings
map('n', '<leader>ss', ':split<CR>', default_opts)                     -- Split window
map('n', '<leader>sv', ':vsplit<CR>', default_opts)                    -- Vertical split
map('n', '<leader>w', ':w<CR>', default_opts)                          -- Save
map('n', '<leader>q', ':q<CR>', default_opts)                          -- Quit

-- Tab navigation
map('n', '<leader>tn', ':tabnew<CR>', default_opts)                     -- New tab
map('n', '<leader>to', ':tabnext<CR>', default_opts)                    -- Next tab
map('n', '<leader>tp', ':tabprevious<CR>', default_opts)                -- Previous tab
map('n', '<leader>tc', ':tabclose<CR>', default_opts)                  -- Close tab

-- Clear highlights
map('n', '<leader>nh', ':nohlsearch<CR>', default_opts)                -- Clear search highlights

-- LSP Mappings
map('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', default_opts)     -- Go to definition
map('n', 'gr', ':lua vim.lsp.buf.references()<CR>', default_opts)     -- References
map('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>', default_opts) -- Go to implementation

-- Insert mode mappings
map('i', 'jk', '<Esc>', default_opts)  -- Escape to normal mode with 'jk'

-- Visual mode mappings
map('v', '<', '<gv', default_opts)      -- Keep selection when shifting left
map('v', '>', '>gv', default_opts)  
