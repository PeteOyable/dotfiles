function Keymap(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.keymap.set(mode, lhs, rhs, options)
end

-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

---------------------
-- General Keymaps -------------------
-- Disable arrow keys
Keymap("", "<up>", "<nop>")
Keymap("", "<down>", "<nop>")
Keymap("", "<left>", "<nop>")
Keymap("", "<right>", "<nop>")

-- use jk to exit insert mode
Keymap("i", "jj", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
Keymap("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- pane resizing
Keymap("n", "+", ":vertical resize +5<CR>", { desc = "Increment number" }) -- increment
Keymap("n", "_", ":vertical resize -5<CR>", { desc = "Increment number" }) -- increment
Keymap("n", "=", ":resize -5<CR>", { desc = "Decrement number" }) -- decrement
Keymap("n", "-", ":resize +5<CR>", { desc = "Decrement number" }) -- decrement

-- window management
Keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
Keymap("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
Keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
Keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- splits navigation
if os.getenv("TMUX") then
	Keymap("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
	Keymap("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
	Keymap("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
	Keymap("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
end

-- buffer navigation
Keymap("n", "<leader>bx", "<cmd>bd<CR>", { desc = "Close buffer" }) -- close buffer

-- indenting
Keymap("v", "<", "<gv")
Keymap("v", ">", ">gv")

-- move lines up and down
Keymap("v", "J", ":m '>+1<CR>gv=gv")
Keymap("v", "K", ":m '<-2<CR>gv=gv")
