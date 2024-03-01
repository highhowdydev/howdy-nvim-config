local cmd = vim.cmd
local opt = vim.opt
local g = vim.g
local indent = 2

cmd([[
	filetype plugin indent on
]])

-- disable netrw
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
opt.termguicolors = true

opt.backspace = { "eol", "start", "indent" }
opt.clipboard = "unnamedplus"
opt.encoding = "utf-8"
opt.matchpairs = { "(:)", "{:}", "[:]", "<:>" }
opt.syntax = "enable"

-- indents
opt.autoindent = true
opt.expandtab = true
opt.shiftwidth = indent
opt.smartindent = true
opt.softtabstop = indent
opt.tabstop = indent

-- search
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.wildignore = opt.wildignore + { "*/node_modules/*", "*/.git/*", "*/vendor/*" }
opt.wildmenu = true

-- ui
opt.cursorline = true
opt.laststatus = 2
-- opt.lazyredraw = true
opt.list = true
opt.listchars = {
	tab = "❘-",
	trail = "·",
	lead = "·",
	extends = "»",
	precedes = "«",
	nbsp = "×",
}
opt.mouse = "a"
opt.number = true
opt.rnu = true
opt.scrolloff = 18
opt.showmode = false
opt.sidescrolloff = 3
opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.wrap = false

-- autocompletion
opt.completeopt = { "menu", "menuone", "noselect" }
opt.shortmess = opt.shortmess + { c = true }

-- perf
opt.redrawtime = 1500
opt.timeoutlen = 200
opt.ttimeoutlen = 10
opt.updatetime = 100

-- backups
opt.backup = false
opt.swapfile = false
opt.writebackup = false

opt.swapfile = false
