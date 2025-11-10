-- Default keymaps are all disabled

vim.keymap.set({ "n", "v" }, "J", "5j")
vim.keymap.set({ "n", "v" }, "L", "w")
vim.keymap.set({ "n", "v" }, "H", "b")
vim.keymap.set({ "n", "v" }, "K", "5k")

vim.keymap.del("n", "<leader>qq")
vim.keymap.set({ "n", "x" }, "<leader>q", "<cmd>qa<CR>", { desc = "Quit" })

vim.keymap.set("n", "<leader>c", "gcc", { remap = true, desc = "toggle comment" })
vim.keymap.set("v", "<leader>c", "gc", { remap = true, desc = "toggle comment" })

vim.keymap.set({ "n", "v" }, "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set({ "n", "v" }, "<C-j>", "<C-w>j", { desc = "Move to below window" })
vim.keymap.set({ "n", "v" }, "<C-k>", "<C-w>k", { desc = "Move to above window" })
vim.keymap.set({ "n", "v" }, "<C-l>", "<C-w>l", { desc = "Move to right window" })

vim.keymap.set({ "n", "x", "t" }, "<M-h>", "<cmd>vertical resize -2<CR>", { desc = "Move to left window" })
vim.keymap.set({ "n", "x", "t" }, "<M-j>", "<cmd>resize -2<CR>", { desc = "Move to below window" })
vim.keymap.set({ "n", "x", "t" }, "<M-k>", "<cmd>resize +2<CR>", { desc = "Move to above window" })
vim.keymap.set({ "n", "x", "t" }, "<M-l>", "<cmd>vertical resize +2<CR>", { desc = "Move to right window" })

vim.keymap.del("n", "<leader>cd")
vim.keymap.set("n", "<leader>lx", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

vim.keymap.del({ "n", "x" }, "<leader>cf")
vim.keymap.set({ "n", "x" }, "<leader>lf", function()
  LazyVim.format({ force = true })
end, { desc = "Format" })

vim.keymap.del("n", "<leader>l")
vim.keymap.set("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy" })

vim.keymap.set("n", "<C-w>", function(n)
  Snacks.bufdelete(n)
end, { noremap = true, nowait = true, desc = "Close Buffer" })

vim.keymap.del("n", "<leader>K")
vim.keymap.del("n", "<leader>,")
vim.keymap.del("n", "<leader>/")
vim.keymap.del("n", "<leader>:")
vim.keymap.del("n", "<leader>`")
vim.keymap.del("n", "<leader> ")

vim.keymap.set("n", "<leader>ft", function()
  Snacks.terminal()
end, { desc = "Terminal toggle" })
vim.keymap.set("n", "<leader>fT", function()
  Snacks.terminal.open()
end, { desc = "Terminal new" })
vim.keymap.set({ "n", "t" }, "<c-/>", function()
  Snacks.terminal()
end, { desc = "Terminal toggle" })
