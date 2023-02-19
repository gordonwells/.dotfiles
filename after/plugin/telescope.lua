local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', function ()
    builtin.find_files{
        hidden = true,
    }
end)
vim.keymap.set('n', '<leader>sg', function ()
    builtin.live_grep{
        hidden = true,
    }
end)

require('telescope').setup{
    defaults = {
        options = {
            search_hidden = true
        },
        file_ignore_patterns = {".git"}
    }
}
