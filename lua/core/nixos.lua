-- Helpers for configuration that only applies on NixOS.
local M = {}

--- Whether Neovim is running on NixOS.
--- Checks /etc/os-release (ID=nixos) and falls back to the /etc/NIXOS marker.
M.is_nixos = (function()
	local ok, lines = pcall(vim.fn.readfile, "/etc/os-release")
	if ok then
		for _, line in ipairs(lines) do
			if line == "ID=nixos" then
				return true
			end
		end
	end
	return vim.uv.fs_stat("/etc/NIXOS") ~= nil
end)()

--- Whether an executable is available on PATH.
---@param name string
---@return boolean
function M.executable(name)
	return vim.fn.executable(name) == 1
end

return M
