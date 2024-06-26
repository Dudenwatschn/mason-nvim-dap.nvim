return {
	{
		name = 'Node2: Launch',
		type = 'node2',
		request = 'launch',
		program = '${file}',
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = 'inspector',
		console = 'integratedTerminal',
	},
	{
		-- For this to work you need to make sure the node process is started with the `--inspect` flag.
		name = 'Node2: Attach to process',
		type = 'node2',
		request = 'attach',
		processId = require('dap.utils').pick_process,
	},
}
