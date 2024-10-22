return {
  {
    "hkupty/iron.nvim", -- REPL support for running Jupyter Notebook cells
    config = function()
      local iron = require("iron.core")

      iron.setup {
        config = {
          repl_definition = {
            python = {
              command = {"ipython", "--no-autoindent"}
            },
          },
          repl_open_cmd = "vertical botright 80 split",
        },
        keymaps = {
          send_motion = "<leader>sc", -- Send code to REPL using this key binding
          visual_send = "<leader>sc",
          send_file = "<leader>sf",
        },
      }
    end,
  },
  {
    "untitled-ai/jupyter_ascending.vim", -- Jupyter Notebook support for running cells from .py files
    ft = { "python", "jupyter" },
    config = function()
      vim.g.jupyter_ascending_default_keybindings = 1
    end,
  },
  {
    "goerz/jupytext.vim", -- Sync .py files with Jupyter Notebooks
    ft = "python",
    config = function()
      vim.g.jupytext_format = "py:percent" -- Use the percent format for Jupyter cells in Python files
    end,
  },
}
