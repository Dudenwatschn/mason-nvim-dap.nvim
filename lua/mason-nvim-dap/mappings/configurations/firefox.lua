return {
	{
		name = 'Firefox: Debug',
		type = 'firefox',
		request = 'launch',
		reAttach = true,
		url = 'http://localhost:3000',
		webRoot = '${workspaceFolder}',
		firefoxExecutable = vim.fn.exepath('firefox'),
	},
}
