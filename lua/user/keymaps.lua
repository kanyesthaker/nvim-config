local opts = { noremap = true, silent = true }       -- No recursive mapping, no output

local term_opts = { silent = true }

-- Alias function mapping
local km = vim.api.nvim_set_keymap

-- Use space as leader
km("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Remap navigation keys
-- nav between windows
km("n", "<C-h>", "<C-w>h", opts)
km("n", "<C-l>", "<C-w>l", opts)
km("n", "<C-j>", "<C-w>j", opts)
km("n", "<C-k>", "<C-w>k", opts)

-- Open Lexplore with <leader>e
km("n", "<leader>e", ":Lex 30<CR>", opts)

-- Use arrows to resize windows
km("n", "<C-Up>", ":resize +2<CR>", opts) 
km("n", "<C-Down>", ":resize -2<CR>", opts)
km("n", "<C-Left>", ":vertical resize -2<CR>", opts)
km("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Tab navigation
km("n", "<S-l>", ":bnext<CR>", opts)
km("n", "<S-h>", ":bprevious<CR>", opts)

-- Fast exit from insert to normal mode
km("i", "jk", "<ESC>", opts)
km("v", "jk", "<ESC>", opts)
km("n", "<leader>q", ":q!<cr>", opts)

-- Indents in visual mode
km("v", "<", "<gv", opts)
km("v", ">", ">gv", opts)

-- Move text up and down
km("v", "<A-j>", ":m .+1<CR>==", opts)
km("v", "<A-k>", ":m .-2<CR>==", opts)
-- Paste-after-yank without re-yanking (thank god for this one)
km("v", "p", '"_dP', opts)

-- Move a block of text (visual mode) up an down
km("x", "J", ":move '>+1<CR>gv-gv", opts)
km("x", "K", ":move '<-2<CR>gv-gv", opts)
km("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
km("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Better navigation for in-editor terminal
km("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
km("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
km("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
km("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Telescope
km("n", "<leader>f", "<cmd>Telescope live_grep<cr>", opts)
km("n", "<leader>p", "<cmd>Telescope find_files<cr>", opts)
km("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)

