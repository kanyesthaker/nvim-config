-- :help options
vim.opt.backup = false -- create backup file?
vim.opt.clipboard = "unnamedplus" -- access system clipboard
vim.opt.cmdheight = 2 -- Space in messages
vim.opt.completeopt = { "menuone", "noselect" } -- cmp
vim.opt.conceallevel = 0 -- See backtics in markdown
vim.opt.fileencoding = "utf-8" -- self explanatory
vim.opt.hlsearch = true -- highlight search matches
vim.opt.ignorecase = true -- ignorecase in search
vim.opt.mouse = "a" -- allow mouse usage in nvim
vim.opt.pumheight = 10 -- popup menu height
vim.opt.showmode = false -- Don't show -- INSERT -- or -- VISUAL --
vim.opt.showtabline = 2 -- show tab lines
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- smart indent
vim.opt.splitbelow = true -- horizontal splits go below current window
vim.opt.splitright = true -- vertical splits go to the right of the current window
vim.opt.swapfile = false -- create swapfile
vim.opt.termguicolors = true -- support termguicolors
vim.opt.timeoutlen = 1000 
vim.opt.undofile = true -- persistent undo
vim.opt.writebackup = false -- stop a file from being edited if it is being edited by another file
vim.opt.expandtab = true -- tabs as spaces
vim.opt.shiftwidth = 2 -- 2 spaces per tab
vim.opt.tabstop = 2 -- same
vim.opt.cursorline = true -- current line highlighting
vim.opt.number = true -- line numbers
vim.opt.relativenumber = false -- relative line numbering
vim.opt.numberwidth = 2 -- column width
vim.opt.signcolumn = "yes" -- show the sign column
vim.opt.wrap = false -- show everything on one long line
vim.opt.scrolloff = 8 -- don't know what this does
vim.opt.sidescrolloff = 8

vim.opt.shortmess:append "c"

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- what does this do?

