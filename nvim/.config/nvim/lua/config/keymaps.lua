-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "<A-n>", "<ESC>", { desc = "Exit insert mode with alt-n" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cm>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
keymap.set("n", "<leader>bt", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>bf", ":NvimTreeFocus<CR>", { noremap = true, silent = true })

-- Colemak remapping
keymap.set("n", "n", "h", { noremap = true, silent = true })
keymap.set("n", "h", "n", { noremap = true, silent = true })

keymap.set("n", "i", "l", { noremap = true, silent = true })
keymap.set("n", "l", "i", { noremap = true, silent = true })

keymap.set("n", "I", "L", { noremap = true, silent = true })
keymap.set("n", "L", "I", { noremap = true, silent = true })

keymap.set("n", "j", "e", { noremap = true, silent = true })
keymap.set("n", "e", "j", { noremap = true, silent = true })

keymap.set("n", "k", "u", { noremap = true, silent = true })
keymap.set("n", "u", "k", { noremap = true, silent = true })

keymap.set("v", "n", "h", { noremap = true, silent = true })
keymap.set("v", "h", "n", { noremap = true, silent = true })
keymap.set("v", "i", "l", { noremap = true, silent = true })
keymap.set("v", "l", "i", { noremap = true, silent = true })
keymap.set("v", "j", "e", { noremap = true, silent = true })
keymap.set("v", "e", "j", { noremap = true, silent = true })
keymap.set("v", "k", "u", { noremap = true, silent = true })
keymap.set("v", "u", "k", { noremap = true, silent = true })

keymap.set("o", "n", "h", { noremap = true, silent = true })
keymap.set("o", "h", "n", { noremap = true, silent = true })
keymap.set("o", "i", "l", { noremap = true, silent = true })
keymap.set("o", "j", "e", { noremap = true, silent = true })
keymap.set("o", "e", "j", { noremap = true, silent = true })
keymap.set("o", "k", "u", { noremap = true, silent = true })
keymap.set("o", "u", "k", { noremap = true, silent = true })

-- save file
keymap.set("n", "<leader>w", ":update<CR>")
keymap.set("n", "<leader>q", ":q<CR>")
