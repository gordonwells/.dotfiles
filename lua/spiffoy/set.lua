local options = {
    nu = true,
    relativenumber = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    wrap = false,
    swapfile = false,
    backup = false,
    undodir = os.getenv("HOME") .. "/.vim/undodir",
    undofile = true,
    hlsearch = false,
    incsearch = true,
    termguicolors = true,
    scrolloff = 8,
    signcolumn = "yes",
    updatetime = 50,
    cursorline = true,
    showmode = false
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.opt.isfname:append("@-@")

vim.g.mapleader = " "
