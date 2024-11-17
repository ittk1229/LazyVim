return {
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    -- event = "VimEnter",
    -- ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    --   -- refer to `:h file-pattern` for more examples
    --   "BufReadPre path/to/my-vault/*.md",
    --   "BufNewFile path/to/my-vault/*.md",
    -- },
    keys = {
      { "<leader>od", ":ObsidianToday<cr>", desc = "Dailiy note" },
      { "<leader>os", ":ObsidianSearch<cr>", desc = "Search notes" },
      { "<leader>oq", ":ObsidianQuickSwitch<cr>", desc = "Quick switch" },
      { "<leader>of", ":ObsidianLinks<cr>", desc = "Forward links" },
      { "<leader>ob", ":ObsidianBackLinks<cr>", desc = "Back links" },
      { "<leader>oo", ":ObsidianOpen<cr>", desc = "Open in Obsidian app" },
    },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- see below for full list of optional dependencies 👇
    },
    opts = {
      workspaces = {
        {
          name = "Remote",
          path = "/Users/ittk1229/Obsidian/Remote/",
        },
      },
      daily_notes = {
        -- Optional, if you keep daily notes in a separate directory.
        folder = "7-journal/daily/",
        -- Optional, if you want to change the date format for the ID of daily notes.
        date_format = "%Y-%m-%d",
        -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
        template = nil,
      },
      -- Open URL
      follow_url_func = function(url)
        -- Open the URL in the default web browser.
        vim.fn.jobstart({ "open", url }) -- Mac OS
        -- vim.fn.jobstart({"xdg-open", url})  -- linux
        -- vim.cmd(':silent exec "!start ' .. url .. '"') -- Windows
        -- vim.ui.open(url) -- need Neovim 0.10.0+
      end,
      open_app_foreground = true,
    },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "hrsh7th/cmp-emoji" },
    },
    ft = "markdown",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
        { name = "emoji" },
      }))
    end,
  },
  {
    "ixru/nvim-markdown",
  },
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      local spec = opts.spec or {}
      table.insert(spec, {
        { "<leader>o", group = "Obsidian", icon = { icon = "󰇈", color = "purple" } },
      })

      opts.spec = spec
    end,
  },
  {
    "3rd/image.nvim",
    opts = {},
  },
}
