return {
  "rmagatti/auto-session",
  dependencies = {
    "nvim-telescope/telescope.nvim", -- Only needed if you want to use sesssion lens
  },
  config = function()
    require("auto-session").setup({
      log_level = "error",
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      session_lens = {
        load_on_setup = true,
        theme_conf = { border = true },
        previewer = false,
        buftypes_to_ignore = {},
      },
    })
  end,
}
