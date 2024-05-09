local mason_path = require('mason-core.path')

return {
	{
		type = 'haskell',
		request = 'launch',
		name = 'Debug',
		workspace = '${workspaceFolder}',
		startup = '${file}',
		stopOnEntry = true,
		logFile = vim.fn.stdpath('data') .. '/haskell-dap.log',
		logLevel = 'WARNING',
		ghciEnv = vim.empty_dict(),
		ghciPrompt = 'ghci>',
		-- Adjust the prompt to the prompt you see when you invoke the stack ghci command below
		ghciInitialPrompt = '>',
		ghciCmd = 'stack ghci --with-ghc='
			.. mason_path.bin_prefix('ghci-dap')
			.. ' --test --no-load --no-build --main-is TARGET --ghci-options -fprint-evld-with-show --ghci-options -ignore-dot-ghci',
	},
}
