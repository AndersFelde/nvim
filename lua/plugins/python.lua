return {
  {
    "linux-cultist/venv-selector.nvim",
    cmd = "VenvSelect",
    keys = {
      { "<leader>cv", false, desc = "Select VirtualEnv", ft = "python" },
      { "<leader>lv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv", ft = "python" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff = {
          keys = {
            {
              "<leader>co",
              false,
            },
            {
              "<leader>lo",
              LazyVim.lsp.action["source.organizeImports"],
              desc = "Organize Imports",
            },
          },
        },
        ruff_lsp = {
          keys = {
            {
              "<leader>co",
              false,
            },
            {
              "<leader>lo",
              LazyVim.lsp.action["source.organizeImports"],
              desc = "Organize Imports",
            },
          },
        },
      },
    },
  },
}
