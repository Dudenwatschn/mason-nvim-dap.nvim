local mason_path = require('mason-core.path')
local M = {
	id = 'cppdbg',
	type = 'executable',
	command = mason_path.bin_prefix('OpenDebugAD7'),
}
if vim.fn.has('win32') == 1 then
	M.options = {
		detached = false,
	}
end

return M
