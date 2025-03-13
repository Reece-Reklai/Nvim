vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fd", vim.cmd.Ex)

-- During Visual line, all you to move highlighted words
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Allow your cursor to remain in place
-- J causes u to append to the beginnin of previous line
vim.keymap.set("n", "J", "mzJ`z")

-- CTRL U and D (Half page jump
-- Cursor is centered in place
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- \ uses search for current page
-- Cursor showcases where it currently is
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- allows p to paste and any deleted words in the process
-- are not going to be registered in the buffer
-- that y and p shares
-- sent to the void register instead
vim.keymap.set("x", "<leader>v", "\"_dP")

-- yank into clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete word in buffer for y and
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Q is inop
vim.keymap.set("n", "Q", "<nop>")

-- file search outside vim (hop in and out of projects
vim.keymap.set("n", "C-f", "<cmd>silent ! tmux neww tmus-sessionizer<CR>")

-- space s = mass edit on said word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make a bash file on executable (git) immediately instead of existing to terminal to do it
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
