return {
  {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup()
    end
  },
  {
    "nvim-lua/plenary.nvim", -- Dependency for many plugins
  }
}
