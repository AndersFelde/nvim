-- Copied from lazyvim
local pick = function()
  local refactoring = require("refactoring")
  if LazyVim.pick.picker.name == "telescope" then
    return require("telescope").extensions.refactoring.refactors()
  elseif LazyVim.pick.picker.name == "fzf" then
    local fzf_lua = require("fzf-lua")
    local results = refactoring.get_refactors()

    local opts = {
      fzf_opts = {},
      fzf_colors = true,
      actions = {
        ["default"] = function(selected)
          refactoring.refactor(selected[1])
        end,
      },
    }
    fzf_lua.fzf_exec(results, opts)
  else
    refactoring.select_refactor()
  end
end

return {
  {
    "ThePrimeagen/refactoring.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      {
        "<leader>lr",
        pick,
        mode = { "n", "x" },
        desc = "Refactor",
      },
      { "<leader>r", false, mode = { "n", "x" } },
      {
        "<leader>rs",
        false,
        mode = { "n", "x" },
      },
      {
        "<leader>ri",
        false,
        mode = { "n", "x" },
      },
      {
        "<leader>rb",
        false,
        mode = { "n", "x" },
      },
      {
        "<leader>rf",
        false,
        mode = { "n", "x" },
      },
      {
        "<leader>rP",
        false,
      },
      {
        "<leader>rp",
        false,
        mode = { "n", "x" },
      },
      {
        "<leader>rc",
        false,
      },
      {
        "<leader>rf",
        false,
        mode = { "n", "x" },
      },
      {
        "<leader>rF",
        false,
        mode = { "n", "x" },
      },
      {
        "<leader>rx",
        false,
        mode = { "n", "x" },
      },
      {
        "<leader>rp",
        false,
        mode = { "n", "x" },
      },
    },
  },
}
