local mason_path = require('mason-core.path')
return {
	type = 'executable',
	command = mason_path.bin_prefix('netcoredbg'),
	args = { '--interpreter=vscode' },
}
