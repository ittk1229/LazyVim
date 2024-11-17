return {
  -- Change logo
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      -- Note: Please do not apply indentation or extra whitespace to the logo.
      -- Since the logo is automatically centered, including indentation or spaces
      -- can cause misalignment in its correct display position.
      local logo = [[
██╗  ██╗ █████╗ ███████╗██╗   ██╗███████╗
██║ ██╔╝██╔══██╗██╔════╝╚██╗ ██╔╝██╔════╝
█████╔╝ ███████║███████╗ ╚████╔╝ ███████╗
██╔═██╗ ██╔══██║╚════██║  ╚██╔╝  ╚════██║
██║  ██╗██║  ██║███████║   ██║   ███████║
╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝

[@ittk1229]
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"

      opts.config.header = vim.split(logo, "\n")
      return opts
    end,
  },
  {
    "folke/snacks.nvim",
    keys = { { "<leader>sns", ":lua Snacks.notifier.show_history()<cr>", desc = "Show snack history" } },
  },
}
