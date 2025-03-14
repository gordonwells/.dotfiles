local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier.with({
			extra_args = { "--single-quote", "--jsx-single-quote", "--quote-props", "consistent" },
		}),
		formatting.black.with({ extra_args = { "-l", "99" } }),
		formatting.isort.with({ extra_args = { "--multi-line", "3" } }),
		formatting.stylua,
		-- diagnostics.flake8.with({ extra_args = { "--max-line-length", "99" } }),
		formatting.shfmt,
		formatting.stylua,
		formatting.terraform_fmt,
		formatting.sql_formatter.with({
			extra_args = {
				"--config",
				[[{
				"language": "tsql",
				"dialect": "tsql"
}]],
			},
		}),
	},
})
