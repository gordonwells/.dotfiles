-- Required to avoid interference with nvimtree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("user.keymaps")
require("user.plugins")

require("user.cmp")
require("user.colorscheme")
require("user.dap")
require("user.gitsigns")
require("user.harpoon")
require("user.lsp")
require("user.lualine")
require("user.nvim-tree")
require("user.options")
require("user.treesitter")

vim.g.python3_host_prog = "/home/gordon/.pyenv/versions/py3nvim/bin/python"
