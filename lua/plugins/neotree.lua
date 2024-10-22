return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- Optional: Adds file type icons
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional: Enable for image support in the preview window
        },
        config = function()
            require("neo-tree").setup({
                -- Neo-tree configuration options
                close_if_last_window = true,  -- Close Neo-tree if it is the last window left in the tab
                popup_border_style = "rounded", -- Rounded borders for popups
                enable_git_status = true,     -- Show git status icons in the file tree
                enable_diagnostics = true,    -- Show diagnostics icons in the file tree

                default_component_configs = {
                    indent = {
                        indent_size = 2,
                        padding = 1,  -- Extra padding between tree levels
                        with_markers = true,
                        highlight = "NeoTreeIndentMarker",
                    },
                    icon = {
                        folder_closed = "",
                        folder_open = "",
                        folder_empty = "",
                        default = "*",
                    },
                    modified = {
                        symbol = "[+]",
                        highlight = "NeoTreeModified",
                    },
                    name = {
                        trailing_slash = false,
                        use_git_status_colors = true,
                    },
                },
                filesystem = {
                    follow_current_file = {
			    enabled = true,
		    }, -- Automatically focus on the file in the active buffer
                    use_libuv_file_watcher = true, -- Use system events to detect file changes
                    hijack_netrw_behavior = "open_default", -- Integrates with netrw for file browsing
                    filtered_items = {
                        visible = true, -- Show hidden files by default
                        hide_dotfiles = false,
                        hide_gitignored = true,
                    },
                },
                window = {
                    position = "left", -- Position of the file tree window (can be "left", "right", or "float")
                    width = 30,       -- Set the width of the file tree window
                    mappings = {
                        ["o"] = "open",
                        ["<CR>"] = "open",
                        ["<BS>"] = "close_node",
                        ["<S-CR>"] = "split_with_window_picker",
                        ["v"] = "vsplit_with_window_picker",
                        ["t"] = "open_tabnew",
                    },
                },
                buffers = {
                    show_unloaded = true, -- Show unloaded buffers in the buffer list
                },
            })
        end,
    },
}
