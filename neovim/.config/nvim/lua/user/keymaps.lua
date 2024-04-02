local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Normal --
-- Window navigation
keymap("n", "<C-A-H>", "<C-w>h", opts)
keymap("n", "<C-A-J>", "<C-w>j", opts)
keymap("n", "<C-A-K>", "<C-w>k", opts)
keymap("n", "<C-A-L>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<Up>", ":resize +5<CR>", opts)
keymap("n", "<Down>", ":resize -5<CR>", opts)
keymap("n", "<Left>", ":vertical resize -5<CR>", opts)
keymap("n", "<Right>", ":vertical resize +5<CR>", opts)

keymap("n", "<C-Up>", ":resize +1<CR>", opts)
keymap("n", "<C-Down>", ":resize -1<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -1<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +1<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- Yank to system clipboard
keymap("n", "<leader>y", '"+y', opts)

-- Insert --
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
--keymap("v", "<", "<gv", opts)
--keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "p", '"_dP', opts)

-- Yank to system clipboard
keymap("v", "<leader>y", '"+y', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Telescope
keymap("n", "<leader>sf", "<cmd>lua require('telescope.builtin').find_files({ hidden = true, no_ignore = true})<cr>", opts)
keymap("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", opts)

keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<cr>", opts)

-- nvim-tree
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opts)

-- nvim-dap
keymap("n", "<F9>", "<cmd>DapToggleBreakpoint<cr>", opts)
keymap("n", "<F5>", "<cmd>DapContinue<cr>", opts)
keymap("n", "<F17>", "<cmd>DapTerminate<cr>", opts)
keymap("n", "<F10>", "<cmd>DapStepOver<cr>", opts)
keymap("n", "<F11>", "<cmd>DapStepInto<cr>", opts)
keymap("n", "<F23>", "<cmd>DapStepOut<cr>", opts)
