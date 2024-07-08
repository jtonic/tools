return {
  {
    "oxfist/night-owl.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("night-owl").setup()
      vim.cmd.colorscheme("night-owl")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  {
    "f-person/auto-dark-mode.nvim",
    opts = {
      update_interval = 1000,
      set_dark_mode = function()
        vim.cmd.colorscheme("catppuccin-mocha")
        -- vim.cmd.colorscheme("night-owl")
      end,
      set_light_mode = function()
        vim.cmd.colorscheme("catppuccin-latte")
        -- vim.cmd.colorscheme("tokyonight-day")
      end,
    },
  },
}
