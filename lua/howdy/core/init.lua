local howdy_modules = {
	"howdy.core.editor",
  "howdy.core.mappings",
  "howdy.core.lazy",
}

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

for _, mod in ipairs(howdy_modules) do
	local ok, err = pcall(require, mod)

	if not ok and not mod:find("howdy.config") then
		error(("Error loading %s...nn%s"):format(mod, err))
	end
end

-- vim.cmd[[colorscheme tokyonight]]
