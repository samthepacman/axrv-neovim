return {
    {
        'navarasu/onedark.nvim',
        lazy = false,
        config = function()
            require('onedark').setup {
                style = 'cool',
                transparent = true,
                term_colors = true,
                ending_tildes = false,
                cmp_itemkind_reverse = false,

                toggle_style_key = nil,
                toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'},

                code_style = {
                    comments = 'italic',
                    keywords = 'none',
                    functions = 'none',
                    strings = 'none',
                    variables = 'none',
                },

                lualine = {
                    transparent = true,
                },

                colors = {},
                highlights = {},

                diagnostics = {
                    darker = true,
                    undercurl = true,
                    background = true,
                },
            }
            require('onedark').load()
        end,
    },
}

--  return {
--     {
--         'nyoom-engineering/oxocarbon.nvim',
--         config = function()
--              dim_inactive = {
--                  enabled = false, -- dims the background color of inactive window
--                  shade = "dark",
--                  percentage = 0.15, -- percentage of the shade to apply to the inactive window
--              },
--             -- Set the theme
--             vim.cmd('colorscheme oxocarbon')
--         end
--     },
-- }

-- return {
--     "Everblush/nvim",
--     config = function()
--         vim.cmd([[colorscheme everblush]])
--     end,
-- }
-- 
-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   config = function()
--     require("catppuccin").setup({
--       flavour = "mocha",
--       transparent_background = false,
--       term_colors = true,
--       integrations = {
--         neotree = true,
--         treesitter = true,
-- 	    barbar = true,
--         telescope = true,
--         nvimtree = false,
--         which_key = true,
--         indent_blankline = {
--           enabled = true,
--           colored_indent_levels = false,
--         },
--         native_lsp = {
--           enabled = true,
--           virtual_text = {
--             errors = { "italic" },
--             hints = { "italic" },
--             warnings = { "italic" },
--             information = { "italic" },
--           },
--           underlines = {
--             errors = { "underline" },
--             hints = { "underline" },
--             warnings = { "underline" },
--             information = { "underline" },
--           },
--         },
--       },
--     })
--     vim.cmd.colorscheme "catppuccin",
--   end,
-- }

-- return {
--  "catppuccin/nvim",
--  name = "catppuccin",
--  config = function()
--    require("catppuccin").setup({
--      flavour = "mocha",
--      transparent_background = false,
--      term_colors = true,
--      integrations = {
--        neotree = true,
--        treesitter = true,
--        barbar = true,
--        telescope = true,
--        nvimtree = false,
--        which_key = true,
--        indent_blankline = {
--          enabled = true,
--          colored_indent_levels = false,
--        },
--        native_lsp = {
--          enabled = true,
--          virtual_text = {
--            errors = { "italic" },
--            hints = { "italic" },
--            warnings = { "italic" },
--            information = { "italic" },
--          },
--          underlines = {
--            errors = { "underline" },
--            hints = { "underline" },
--            warnings = { "underline" },
--            information = { "underline" },
--          },
--        },
--      },
--    })
--    vim.cmd("colorscheme catppuccin")
--  end,
--}

-- return {
--   "catppuccin/nvim",
--   config = function()
-- 	require("catppuccin").setup({
--     flavour = "auto", -- latte, frappe, macchiato, mocha
--     background = { -- :h background
--         light = "mocha",
--         dark = "mocha",
--     },
--     transparent_background = true, -- disables setting the background color.
--     show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--     term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
--     dim_inactive = {
--         enabled = false, -- dims the background color of inactive window
--         shade = "dark",
--         percentage = 0.15, -- percentage of the shade to apply to the inactive window
--     },
--     no_italic = false, -- Force no italic
--     no_bold = false, -- Force no bold
--     no_underline = false, -- Force no underline
--     styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
--         comments = { "italic" }, -- Change the style of comments
--         conditionals = { "italic" },
--         loops = {},
--         functions = {},
--         keywords = {},
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--         -- miscs = {}, -- Uncomment to turn off hard-coded styles
--     },
--     color_overrides = {},
--     custom_highlights = {},
--     default_integrations = true,
--     integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         treesitter = true,
--         notify = true,
--         mini = {
--             enabled = true,
--             indentscope_color = "",
--         },
--         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--     },
-- })
-- 
-- -- setup must be called before loading
-- vim.cmd.colorscheme "catppuccin"	
--   end,
-- }
--
-- return {
--   "neanias/everforest-nvim",
--   version = false,
--   lazy = false,
--   priority = 1000, -- make sure to load this before all the other start plugins
--   -- Optional; default configuration will be used if setup isn't called.
--   config = function()
--     require("everforest").setup({
--         transparent_background_level = 2,
--         require("everforest").load()
--     })
--   end,
-- }

-- return {
--   "Mofiqul/dracula.nvim",
--   config = function()
--     require("dracula").setup({
--       colors = {
--         bg = "#282A36",
--         fg = "#F8F8F2",
--         selection = "#44475A",
--         comment = "#6272A4",
--         red = "#FF5555",
--         orange = "#FFB86C",
--         yellow = "#F1FA8C",
--         green = "#50fa7b",
--         purple = "#BD93F9",
--         cyan = "#8BE9FD",
--         pink = "#FF79C6",
--         bright_red = "#FF6E6E",
--         bright_green = "#69FF94",
--         bright_yellow = "#FFFFA5",
--         bright_blue = "#D6ACFF",
--         bright_magenta = "#FF92DF",
--         bright_cyan = "#A4FFFF",
--         bright_white = "#FFFFFF",
--         menu = "#21222C",
--         visual = "#3E4452",
--         gutter_fg = "#4B5263",
--         nontext = "#3B4048",
--         white = "#ABB2BF",
--         black = "#191A21",
--       },
--       show_end_of_buffer = true, -- default false
--       -- transparent_bg = true, -- default false
--       lualine_bg_color = "#44475a", -- default nil
--       italic_comment = true, -- default false
--       overrides = {},
--     })
--     vim.cmd.colorscheme "dracula"	
--   end,
-- }
