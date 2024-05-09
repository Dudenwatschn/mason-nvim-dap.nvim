local mason_path = require('mason-core.path')

return {
	type = 'executable',
	command = mason_path.bin_prefix('elixir-ls-debugger'), -- https://github.com/williamboman/mason.nvim/blob/d97579ccd5689f9c6c365e841ea99c27954112ec/lua/mason-registry/elixir-ls/init.lua#L26
	args = {},
}
