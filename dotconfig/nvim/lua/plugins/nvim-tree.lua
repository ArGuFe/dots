return {
  "nvim-tree/nvim-tree.lua",

  opts = function(_, opts)
    -- mantém as opções padrão do LazyVim
    opts.sync_root_with_cwd = true
    opts.respect_buf_cwd = true
    opts.update_cwd = true
    -- opts.theme = "oasis-lagoon"

    opts.update_focused_file = {
      enable = true,
      update_cwd = true,
      update_root = true,
    }

    opts.view = {
      width = 25,
      side = "left",
    }
  end,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
}
