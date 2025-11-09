return {
  "akinsho/bufferline.nvim",
  opts = {
    options = { always_show_bufferline = true },
  },
  keys = {
    { "<Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer", mode = { "n" } },
    { "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer", mode = { "n" } },
    { "<A-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    { "<A-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
  },
}
