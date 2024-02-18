local options = {
    hlsearch = true,
    showmode = false,
    smartcase = true,
    splitbelow = true,
    splitright = true,
    undofile = true,
    updatetime = 300,
    expandtab = true,
    shiftwidth = 2,
    tabstop = 2,
    relativenumber = true,
    signcolumn = "yes",
    wrap = false,
    scrolloff = 8,
    sidescrolloff = 8,
    termguicolors = true,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
