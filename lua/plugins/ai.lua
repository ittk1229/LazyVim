return {
  {
    "zbirenbaum/copilot.lua",
    opts = function(_, opts)
      opts.filetypes = {
        markdown = false,
        help = true,
      }
      return opts
    end,
  },
}
