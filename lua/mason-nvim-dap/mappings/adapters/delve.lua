local mason_path = require('mason-core.path')
-- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#go-using-delve-directly
return {
	type = 'server',
	port = '${port}',
	executable = {
		command = mason_path.bin_prefix('dlv'),
		args = { 'dap', '-l', '127.0.0.1:${port}' },
	},
}
