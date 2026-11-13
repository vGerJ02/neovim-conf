-- Neovim uses LuaJIT (Lua 5.1 plus extensions), not standalone Lua 5.4.
std = "luajit"

-- Neovim injects this API table at runtime; it isn't an undefined variable.
globals = { "vim" }

-- Let StyLua handle layout; Luacheck focuses on code issues.
max_line_length = false
