vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("spiffoy.set")
require("spiffoy.keymaps")
require("spiffoy.plugins")

vim.api.nvim_set_var('python3_host_prog', '/Users/gordonwells/.pyenv/versions/pynvim/bin/python')
