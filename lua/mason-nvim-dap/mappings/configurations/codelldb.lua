return {
	{
		name = 'LLDB: Launch',
		type = 'codelldb',
		request = 'launch',
		program = function()
			return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		end,
		cwd = '${workspaceFolder}',
		stopOnEntry = false,
		args = {},
		console = 'integratedTerminal',
	},
}
