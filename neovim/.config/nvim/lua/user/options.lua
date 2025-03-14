local options = {
	expandtab = true,
	hlsearch = true,
	relativenumber = true,
	scrolloff = 8,
	shiftwidth = 4,
	showmode = false,
	sidescrolloff = 8,
	signcolumn = "yes",
	smartcase = true,
	splitbelow = true,
	splitright = true,
	synmaxcol = 200,
	tabstop = 4,
	termguicolors = true,
	undofile = true,
	updatetime = 300,
	wrap = false,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
