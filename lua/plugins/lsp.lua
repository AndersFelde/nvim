return {
  {
    "saghen/blink.cmp",

    opts = {
      keymap = {
        preset = "super-tab",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- Disable default keymap
      keys[#keys + 1] = { "<leader>ca", mode = { "n", "v" }, false }
      keys[#keys + 1] = { "<leader>cc", mode = { "n", "v" }, false }
      keys[#keys + 1] = { "<leader>cl", false }
      keys[#keys + 1] = { "<leader>cC", false }
      keys[#keys + 1] = { "<leader>cR", false }
      keys[#keys + 1] = { "<leader>cr", false }
      keys[#keys + 1] = { "<leader>cA", false }
      keys[#keys + 1] = { "K", false }

      keys[#keys + 1] = {
        "<leader>lk",
        function()
          return vim.lsp.buf.hover()
        end,
        desc = "Hover",
      }
      keys[#keys + 1] =
        { "<leader>ll", vim.lsp.buf.code_action, desc = "Code Action", mode = { "n", "x" }, has = "codeAction" }
      keys[#keys + 1] =
        { "<leader>lc", vim.lsp.codelens.run, desc = "Run Codelens", mode = { "n", "x" }, has = "codeLens" }
      keys[#keys + 1] = {
        "<leader>lC",
        vim.lsp.codelens.refresh,
        desc = "Refresh & Display Codelens",
        mode = { "n" },
        has = "codeLens",
      }
      keys[#keys + 1] = { "<leader>le", vim.lsp.buf.rename, desc = "Rename", has = "rename" }
      keys[#keys + 1] = { "<leader>lA", LazyVim.lsp.action.source, desc = "Source Action", has = "codeAction" }
      keys[#keys + 1] = { "<leader>ld", vim.lsp.buf.definition, desc = "Goto Definition", has = "definition" }
      keys[#keys + 1] = { "<leader>lR", vim.lsp.buf.references, desc = "References", nowait = true }
      keys[#keys + 1] = { "<leader>lI", vim.lsp.buf.implementation, desc = "Goto Implementation" }
      keys[#keys + 1] = {
        "<leader>li",
        function()
          Snacks.picker.lsp_config()
        end,
        desc = "Lsp info",
      }
      keys[#keys + 1] = { "<leader>ly", vim.lsp.buf.type_definition, desc = "Goto T[y]pe Definition" }
      keys[#keys + 1] = { "<leader>lD", vim.lsp.buf.declaration, desc = "Goto Declaration" }
    end,
  },
  {

    "mason-org/mason.nvim",
    cmd = "Mason",

    keys = { { "<leader>cm", false }, { "<leader>lm", "<cmd>Mason<cr>", desc = "Mason" } },
    build = ":MasonUpdate",
    opts_extend = { "ensure_installed" },
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
      },
    },
  },
  {
    "folke/trouble.nvim",
    cmd = { "Trouble" },
    opts = {
      modes = {
        lsp = {
          win = { position = "right" },
        },
      },
    },
    keys = {
      { "<leader>cs", false },
      { "<leader>ls", "<cmd>Trouble symbols toggle<cr>", desc = "Symbols (Trouble)" },
      { "<leader>cS", false },
      { "<leader>lS", "<cmd>Trouble lsp toggle<cr>", desc = "LSP references/definitions/... (Trouble)" },
    },
  },
}
