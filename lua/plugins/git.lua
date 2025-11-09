return {
  {
    "sindrets/diffview.nvim",
    opts = {
      keysmaps = {
        file_panel = {
          { "n", "q", "<cmd>DiffViewClose<CR>", { desc = "Close diff view" } },
        },
        file_history_panel = {
          { "n", "q", "<cmd>DiffViewClose<CR>", { desc = "Close diff view" } },
        },
      },
    },
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen -uw -- %<CR>", desc = "Diff file" },
      { "<leader>gD", "<cmd>DiffviewOpen<CR>", desc = "Diff workspace" },
      { "<leader>gc", "<cmd>DiffviewClose<CR>", desc = "Diffview Close" },
      { "<leader>gH", "<cmd>DiffviewFileHistory %<CR>", desc = "File history" },
    },
  },
}
