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
    opts = {
      servers = {
        ["*"] = {
          keys = {
            { "<leader>ca", mode = { "n", "v" }, false },
            { "<leader>cc", mode = { "n", "v" }, false },
            { "<leader>cl", false },
            { "<leader>cC", false },
            { "<leader>cR", false },
            { "<leader>cr", false },
            { "<leader>cA", false },
            { "K", false },
            {
              "<leader>lk",
              function()
                return vim.lsp.buf.hover()
              end,
              desc = "Hover",
            },
            { "<leader>ll", vim.lsp.buf.code_action, desc = "Code Action", mode = { "n", "x" }, has = "codeAction" },
            { "<leader>lc", vim.lsp.codelens.run, desc = "Run Codelens", mode = { "n", "x" }, has = "codeLens" },
            {
              "<leader>lC",
              vim.lsp.codelens.refresh,
              desc = "Refresh & Display Codelens",
              mode = { "n" },
              has = "codeLens",
            },
            { "<leader>le", vim.lsp.buf.rename, desc = "Rename", has = "rename" },
            { "<leader>lA", LazyVim.lsp.action.source, desc = "Source Action", has = "codeAction" },
            {
              "<leader>ld",
              function()
                Snacks.picker.lsp_definitions()
              end,
              desc = "Goto Definition",
              has = "definition",
            },
            {
              "<leader>lR",
              function()
                Snacks.picker.lsp_references()
              end,
              desc = "References",
              nowait = true,
            },
            { "<leader>lI", vim.lsp.buf.implementation, desc = "Goto Implementation" },
            {
              "<leader>li",
              function()
                Snacks.picker.lsp_config()
              end,
              desc = "Lsp info",
            },
            { "<leader>ly", vim.lsp.buf.type_definition, desc = "Goto T[y]pe Definition" },
            { "<leader>lD", vim.lsp.buf.declaration, desc = "Goto Declaration" },
          },
        },
      },
    },
  },
  {

    "mason-org/mason.nvim",
    cmd = "Mason",

    keys = { { "<leader>cm", false }, { "<leader>lm", "<cmd>Mason<cr>", desc = "Mason" } },
    build = ":MasonUpdate",
    opts_extend = { "ensure_installed" },
    opts = {
      ensure_installed = {
        "ruff",
        "json-lsp",
        "lua-language-server",
        "stylua",
        "shfmt",
      },
    },
  },
  {
    "mrjones2014/codesettings.nvim",
    opts = {
      merge_lists = "append",
      config_file_paths = {
        ".vscode/settings.json",
        "codesettings.json",
        "lspsettings.json",
      },
    },
  },

  -- Patch LazyVim’s built-in lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local cs = require("codesettings")

      for name, config in pairs(opts.servers) do
        if config.before_init then
          config.before_init = function(_, new_config)
            new_config.before_init(_, new_config)
            new_config = cs.with_local_settings(name, new_config)
          end
        else
          config.before_init = function(_, new_config)
            new_config = cs.with_local_settings(name, new_config)
          end

        end
      end
      return opts
    end,
  },
}
