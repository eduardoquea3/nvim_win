return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    -- enabled = false,
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
      styles = {
        comments = { "italic" },
        keywords = { "italic" },
      },
      integrations = {
        dashboard = true,
        harpoon = true,
        mason = true,
        neotree = true,
        noice = true,
        cmp = true,
        notify = true,
        treesitter = true,
        telescope = true,
        ufo = true,
        lsp_trouble = true,
        gitgutter = true,
        which_key = true,
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      -- vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = function()
      require("onedarkpro").setup({
        styles = {
          types = "NONE",
          methods = "NONE",
          numbers = "NONE",
          strings = "NONE",
          comments = "italic",
          keywords = "bold,italic",
          constants = "NONE",
          functions = "italic",
          operators = "NONE",
          variables = "NONE",
          parameters = "NONE",
          conditionals = "italic",
          virtual_text = "NONE",
        },
      })
      -- vim.cmd("colorscheme onedark")
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight-night")
    end,
  },
  {
    "Shatur/neovim-ayu",
    opts = {
      mirage = true,
    },
    config = function(_, opts)
      -- require("ayu").setup(opts)
      -- require("ayu").colorscheme()
    end,
  },
}
