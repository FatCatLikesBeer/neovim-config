-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, { desc = "LSP Hover" }) -- added: November?
vim.keymap.set("i", "<C-h>", vim.lsp.buf.hover, { desc = "LSP Hover" }) -- added: November?
vim.keymap.set("n", "<leader>H", vim.lsp.buf.definition, { desc = "LSP Definition" })
