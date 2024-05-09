--- Lazily map debug configurations

local M = {}

local META = {}
function META.__index(table, key)
	local ok, configuration = pcall(require, 'mason-nvim-dap.mappings.configurations.' .. key)
	if not ok then
		return nil
	end
	table[key] = configuration
	return configuration
end

setmetatable(M, META)

return M
