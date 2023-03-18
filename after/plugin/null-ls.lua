local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        -- null_ls.builtins.formatting.styllua,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
    }
})


vim.keymap.set("n", "gf", function() vim.lsp.buf.format() end)
