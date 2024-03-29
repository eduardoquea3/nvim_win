return {
  "simrat39/symbols-outline.nvim",
  lazy = true,
  cmd = { "SymbolsOutline" },
  config = function()
    local icon = require("eduardo.icons")
    require("symbols-outline").setup({
      highlight_hovered_item = true,
      show_guides = true,
      auto_preview = false,
      position = "right",
      relative_width = true,
      width = 25,
      auto_close = false,
      show_numbers = false,
      show_relative_numbers = false,
      show_symbol_details = true,
      preview_bg_highlight = "Pmenu",
      autofold_depth = nil,
      auto_unfold_hover = true,
      fold_markers = { "", "" },
      wrap = false,
      keymaps = {
        close = { "<Esc>", "q" },
        goto_location = "<Cr>",
        focus_location = "o",
        hover_symbol = "<C-space>",
        toggle_preview = "K",
        rename_symbol = "r",
        code_actions = "a",
        fold = "h",
        unfold = "l",
        fold_all = "W",
        unfold_all = "E",
        fold_reset = "R",
      },
      lsp_blacklist = {},
      symbol_blacklist = {},
      symbols = {
        File = { icon = icon.ui.File, hl = "@text.uri" },
        Module = { icon = icon.kind.Module, hl = "@namespace" },
        Namespace = { icon = icon.kind.Namespace, hl = "@namespace" },
        Package = { icon = icon.kind.Package, hl = "@namespace" },
        Class = { icon = icon.kind.Class, hl = "@type" },
        Method = { icon = icon.kind.Method, hl = "@method" },
        Property = { icon = icon.kind.Property, hl = "@method" },
        Field = { icon = icon.kind.Field, hl = "@field" },
        Constructor = { icon = icon.kind.Constructor, hl = "@constructor" },
        Enum = { icon = icon.kind.Enum, hl = "@type" },
        Interface = { icon = icon.kind.Interface, hl = "@type" },
        Function = { icon = icon.kind.Function, hl = "@function" },
        Variable = { icon = icon.kind.Variable, hl = "@constant" },
        Constant = { icon = icon.kind.Constant, hl = "@constant" },
        String = { icon = icon.kind.String, hl = "@string" },
        Number = { icon = icon.kind.Number, hl = "@number" },
        Boolean = { icon = icon.kind.Boolean, hl = "@boolean" },
        Array = { icon = icon.kind.Array, hl = "@constant" },
        Object = { icon = icon.kind.Object, hl = "@type" },
        Key = { icon = icon.kind.Key, hl = "@type" },
        Null = { icon = icon.kind.Null, hl = "@type" },
        EnumMember = { icon = icon.kind.EnumMember, hl = "@field" },
        Struct = { icon = icon.kind.Struct, hl = "@type" },
        Event = { icon = icon.kind.Event, hl = "@type" },
        Operator = { icon = icon.kind.Operator, hl = "@operator" },
        TypeParameter = { icon = icon.kind.TypeParameter, hl = "@parameter" },
        Component = { icon = icon.ui.Code, hl = "@function" },
        Fragment = { icon = icon.ui.Stacks, hl = "@constant" },
      },
    })
  end,
}
