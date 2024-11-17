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
  },
  -- Set default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "material-oceanic",
    },
  },
}
