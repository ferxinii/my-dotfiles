-- Download LAZY if not installed yet
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)


require("config_general")  -- Load file with nvim configuration

require("lazy").setup({
  { import = "plugins" },  -- Load all plugins inside the 'plugins' folder
  { import = "lsp" },  -- Load all plugins inside the 'lsp' folder
}, {
  checker = {
    enabled = true,
    notify = true,
  },
})


