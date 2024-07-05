-- configuration of the neo-tree.nvim plugin

require("neo-tree").setup({
  default_component_configs = {
    icon = {
      folder_closed = "",
      folder_open = "",
      folder_empty = "",
      default = "",
    },
  },
  window = {
    position = "left",
    width = 30,
  },
  filesystem = {
    filtered_items = {
      hide_dotfiles = false, -- Change this to true to hide dotfiles
      hide_gitignored = false,
      hide_by_name = {
        ".bloop",
        ".bsp",
        ".metals",
        ".vscode",
        ".scala-build",
        "target",
        ".DS_Store",
      },
    },
    follow_current_file = true,
    hijack_netrw_behavior = "open_default",
  },
  buffers = {
    follow_current_file = true,
  },
  git_status = {
    window = {
      position = "float",
    },
  },
})
