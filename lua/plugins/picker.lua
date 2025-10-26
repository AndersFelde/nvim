return {
  {
    "folke/snacks.nvim",
    enabled = true,
    keys = {
      {
        "<leader>fw",
        function()
          Snacks.picker.grep()
        end,
        desc = "word",
        mode = { "n", "x" },
      },
      { "<leader>E", false },
      { "<leader>fE", false },
      { "<leader>gd", false },
      { "<leader>gD", false },
    },
    opts = {
      picker = {
        win = {
          input = {
            keys = {
              ["l"] = "confirm",
            },
          },
        },
      },
    },
  },
}
