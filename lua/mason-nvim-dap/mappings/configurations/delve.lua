-- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#go-using-delve-directly
return {
	{
		type = 'delve',
		name = 'Delve: Debug',
		request = 'launch',
		program = '${workspaceFolder}',
	},
	{
		type = 'delve',
		name = 'Delve: Debug test', -- configuration for debugging test files
		request = 'launch',
		mode = 'test',
		program = '${file}',
	},
	-- works with go.mod packages and sub packages
	{
		type = 'delve',
		name = 'Delve: Debug test (go.mod)',
		request = 'launch',
		mode = 'test',
		program = './${relativeFileDirname}',
	},
}
