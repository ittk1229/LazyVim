return {
  -- Make tokyonight transparent
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "marko-cerovac/material.nvim",
    opts = function(_, opts)
      -- Transparent background
      opts.disable = {
        background = true,
      }
      -- Lighter fg colors
      local fg_color = "#C0CED5"
      opts.custom_colors = function(colors)
        colors.editor.fg = "#ffffff"
        colors.editor.fg_dark = fg_color
        colors.syntax.variable = fg_color
        colors.syntax.field = fg_color
      end
      return opts
    end,
  },
  -- Set default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "material-oceanic",
    },
  },
}
