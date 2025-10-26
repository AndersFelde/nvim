return {
  {
    "sindrets/diffview.nvim",
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen -uw -- %<CR>", desc = "Diff file" },
      { "<leader>gD", "<cmd>DiffviewOpen<cr><CR>", desc = "Diff workspace" },
      { "<leader>gc", "<cmd>DiffviewClose<cr><CR>", desc = "Diffview Close" },
      { "<leader>gH", "<cmd>DiffviewFileHistory %<CR>", desc = "File history" },
    },
  },
}
