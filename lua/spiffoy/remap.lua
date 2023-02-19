local remap = function(m, k, v)
    vim.keymap.set(m, k, v)
end


vim.g.mapleader = " "
remap("n", "<leader>e", vim.cmd.Ex)

remap("v", "J", ":m '>+1<CR>gv=gv")
remap("v", "K", ":m '<-2<CR>gv=gv")

remap("n", "J", "mzJ`z")
remap("n", "<C-d>", "<C-d>zz")
remap("n", "<C-u>", "<C-u>zz")
remap("n", "n", "nzzzv")
remap("n", "N", "Nzzzv")

remap("n", "<leader>y", "\"+y")
remap("v", "<leader>y", "\"+y")
remap("n", "<leader>Y", "\"+Y")

-- Faster window resizing with arrow keys
remap("n", "<C-Up>", "<C-w>+")
remap("n", "<C-Down>", "<C-w>-")
remap("n", "<C-Left>", "<C-w><")
remap("n", "<C-Right>", "<C-w>>")
remap("n", "<Up>", "10<C-w>+")
remap("n", "<Down>", "10<C-w>-")
remap("n", "<Left>", "10<C-w><")
remap("n", "<Right>", "10<C-w>>")
