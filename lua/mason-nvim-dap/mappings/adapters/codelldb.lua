local mason_path = require('mason-core.path')
local M = {
	type = 'server',
	port = '${port}',
	executable = {
		command = mason_path.bin_prefix('codelldb'),
		args = { '--port', '${port}' },
	},
}

if vim.fn.has('win32') == 1 then
	M.executable.detached = false
end

return M
