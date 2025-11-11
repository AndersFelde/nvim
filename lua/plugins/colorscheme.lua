return {
  {
    -- add gruvbox
    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
    },
    { "ellisonleao/gruvbox.nvim" },
    {
      "olimorris/onedarkpro.nvim",
      opts = {
        options = {
          transparency = false,
        },
        colors = {
          onedark = {
            bg = "#23272e",
            -- float_bg = "#ffffff",
          },
        },
        styles = {
          methods = "bold",
          functions = "bold"

        },
        highlights = {
          SnacksPickerTree = { bg = "${float_bg}", fg = "${line_number}" },
          SnacksPickerTotals = { bg = "${float_bg}", fg = "${gray}" },
          SnacksWinKeySep = { bg = "${float_bg}", fg = "${gray}" },
          SnacksDashboardDir = { bg = "${float_bg}", fg = "${gray}" },
          SnacksPickerPathHidden = { bg = "${float_bg}", fg = "${gray}" },
          SnacksPickerUnselected = { bg = "${float_bg}", fg = "${gray}" },
          SnacksPickerPathIgnored = { bg = "${float_bg}", fg = "${gray}" },
          SnacksPickerGitStatusIgnored = { bg = "${float_bg}", fg = "${gray}" },
          SnacksPickerGitStatusUntracked = { fg = "${green}" },
          SnacksInputNormal = { bg = "${float_bg}", fg = "${gray}" },
          SnacksPickerTitle = { bg = "${float_bg}", fg = "${green}" },
          SnacksPickerPrompt = { bg = "${float_bg}", fg = "${blue}" },
          NeoTreeNormal = { bg = "${float_bg}" },
          NeoTreeNormalNC = { bg = "${float_bg}" },
          NeoTreeRootName = { fg = "${blue}" },
          NeoTreeDirectoryIcon = { fg = "${blue}" },
          TroubleIndent = { bg = "${float_bg}", fg = "${line_number}" },
          TroublePos = { bg = "${float_bg}" },
          EdgyIcon = { bg = "${float_bg}" },
          ["@odp.import_module.python"] = {fg = "${yellow}"},
          -- SnacksPickerCursorLine = {bg = "${bg}"},
          -- SnacksPickerListCursorLine = {bg = "${bg}"},
          -- SnacksPickerPreviewCursorLine = {bg = "${bg}"},
          -- FloatTitle = {bg = ""}
          -- SnacksPickerBoxCursorLine = {bg = "${float_bg}"},
          -- SnacksPickerBoxInputCursorLine = {bg = "${float_bg}"},
        },
      },
    },

    -- Configure LazyVim to load gruvbox
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "onedark",
      },
    },
  },
}
