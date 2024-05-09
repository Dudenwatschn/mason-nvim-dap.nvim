local function flutter_path()
	return vim.loop.os_uname().sysname == 'Windows_NT' and 'C:\\src\\flutter' or os.getenv('HOME') .. '/flutter'
end

return {
	{
		type = 'dart',
		request = 'launch',
		name = 'Launch flutter',
		-- windows don't really have a standard install path
		-- best effort guess is the instructed install path from:
		-- https://docs.flutter.dev/get-started/install/windows
		dartSdkPath = flutter_path() .. '/bin/cache/dart-sdk/',
		flutterSdkPath = flutter_path(),
		program = '${workspaceFolder}/lib/main.dart',
		cwd = '${workspaceFolder}',
	},
}
