return {
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        load_vscode_settings = false,
        settings = function(_, config)
          return require("codesettings").with_local_settings("rust-analyzer", { settings = config }).settings
        end,
        on_attach = function(_, bufnr)
          vim.keymap.set("n", "<leader>ln", function()
            vim.cmd.RustLsp("codeAction")
          end, { desc = "Rust Code Action", buffer = bufnr })
          vim.keymap.set("n", "<leader>dr", function()
            vim.cmd.RustLsp("debuggables")
          end, { desc = "Rust Debuggables", buffer = bufnr })
          vim.keymap.set("n", "<leader>lx", function()
            vim.cmd.RustLsp("renderDiagnostic")
          end, { desc = "Rust Debuggables", buffer = bufnr })
        end,
      },
    },
  },
}
