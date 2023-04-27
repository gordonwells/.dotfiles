-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

local api = require("nvim-tree.api")
vim.keymap.set("n", "<leader>t", function()
  api.tree.toggle({
    find_file = true,
    focus = true
  })
end)
