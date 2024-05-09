return {
	{
		name = 'Firefox: Debug',
		type = 'firefox',
		request = 'launch',
		reAttach = true,
		url = 'http://localhost:3000',
		webRoot = '${workspaceFolder}',
		firefoxExecutable = mason_path.bin_prefix('firefox'),
	},
}
