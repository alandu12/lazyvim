-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 							*map-table*
--          Mode  | Norm | Ins | Cmd | Vis | Sel | Opr | Term | Lang | ~
-- Command        +------+-----+-----+-----+-----+-----+------+------+ ~
-- [nore]map      | yes  |  -  |  -  | yes | yes | yes |  -   |  -   |
-- n[nore]map     | yes  |  -  |  -  |  -  |  -  |  -  |  -   |  -   |
-- [nore]map!     |  -   | yes | yes |  -  |  -  |  -  |  -   |  -   |
-- i[nore]map     |  -   | yes |  -  |  -  |  -  |  -  |  -   |  -   |
-- c[nore]map     |  -   |  -  | yes |  -  |  -  |  -  |  -   |  -   |
-- v[nore]map     |  -   |  -  |  -  | yes | yes |  -  |  -   |  -   |
-- x[nore]map     |  -   |  -  |  -  | yes |  -  |  -  |  -   |  -   |
-- s[nore]map     |  -   |  -  |  -  |  -  | yes |  -  |  -   |  -   |
-- o[nore]map     |  -   |  -  |  -  |  -  |  -  | yes |  -   |  -   |
-- t[nore]map     |  -   |  -  |  -  |  -  |  -  |  -  | yes  |  -   |
-- l[nore]map     |  -   | yes | yes |  -  |  -  |  -  |  -   | yes  |

-- Enter insert mode
vim.keymap.set({ "n", "x" }, "t", "i")
vim.keymap.set({ "n", "x" }, "T", "I")

-- Cursor movement
vim.keymap.set({ "n", "x", "o" }, "n", "j")
vim.keymap.set({ "n", "x", "o" }, "e", "k")
vim.keymap.set({ "n", "x", "o" }, "i", "l")
vim.keymap.del("x", "in") -- delete keymap - select child(inner) node

vim.keymap.set({ "n", "x", "o" }, "N", "J")
vim.keymap.set({ "n", "x", "o" }, "E", "K")
vim.keymap.set({ "n", "x", "o" }, "I", "L")

vim.keymap.set({ "n", "x", "o" }, "f", "e")

-- Better move
vim.keymap.set({ "n", "x" }, "n", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "e", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Text object
vim.keymap.set({ "x", "o" }, "u", "i")

-- Window
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-n>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-e>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-i>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Search
vim.keymap.set("n", "k", "n")
vim.keymap.set("n", "K", "N")

-- Undo and jump back from <C-o>
vim.keymap.set("n", "U", "<C-r>")
vim.keymap.set("n", "<C-S-o>", "<C-i>")

-- Scroll
vim.keymap.set({ "n", "x" }, "<C-s>", "<C-d>")

vim.keymap.set("n", "<C-[>", "<Esc>")
vim.keymap.set("n", "<C-[>", vim.cmd.noh)
vim.keymap.set("n", "E", vim.lsp.buf.hover)
vim.keymap.set("n", "<space>e", vim.cmd.Ex, { desc = "Open explorer" })

vim.keymap.set("n", "<space>bd", "<cmd>bd<cr>", { desc = "Delete buffer" })
vim.keymap.set("n", "<space>cf", vim.lsp.buf.format, { desc = "Format code" })

vim.keymap.set("n", "<space>u", vim.cmd.Undotree, { desc = "Toggle undotree" })

vim.keymap.set({ "i", "s" }, "<C-h>", "<left>")
vim.keymap.set({ "i", "s" }, "<C-t>", "<right>")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-[>", "<C-\\><C-n>")
