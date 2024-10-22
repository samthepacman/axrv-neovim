
require("config.lazy")
require("config.autocmds")
require("config.keymaps")
require("config.options")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.clipboard = "unnamedplus"
vim.opt.timeoutlen = 300
vim.opt.updatetime = 300


vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.showmatch = true
vim.opt.showmode = false


vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8


vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false


vim.opt.hidden = true
vim.opt.guifont = "CaskaydiaCove Nerd Font:h12"
vim.opt.fillchars:append({ eob = " " })
vim.o.showtabline = 2

vim.cmd([[highlight CursorLine guibg=#161819]])  -- Adjust the color as needed
vim.cmd([[set cursorline]])
vim.cmd([[highlight TabLine guifg=NONE ctermfg=NONE]])
vim.cmd([[highlight TabLineFill guibg=NONE ctermbg=NONE]])
-- vim.cmd([[highlight TabLineSel guibg=NONE ctermbg=NONE]])
vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]])
vim.cmd([[highlight NonText guibg=NONE ctermbg=NONE]])

vim.g.neovide_transparency = 0.88
vim.g.transparency = 0.88
