-- :help options
vim.opt.backup = false                          -- create backup file?
vim.opt.clipboard = "unnamedplus"               -- access system clipboard
vim.opt.cmdheight = 2                           -- Space in messages
vim.opt.completeopt = { "menuone", "noselect" } -- cmp
vim.opt.conceallevel = 0                        -- See backtics in markdown
vim.opt.fileencoding = "utf-8"                  -- self explanatory
vim.opt.hlsearch = true                         -- highlight search matches
vim.opt.ignorecase = true                       -- ignorecase in search
vim.opt.mouse = "a"                             -- allow mouse usage in nvim
vim.opt.pumheight = 10                          -- popup menu height
vim.opt.showmode = false                        -- Don't show -- INSERT -- or -- VISUAL --
vim.opt.showtabline = 2                         -- show tab lines
vim.opt.smartcase = true                        -- smart case
vim.opt.smartindent = true                      -- smart indent
vim.opt.splitbelow = true                       -- horizontal splits go below current window
vim.opt.splitright = true                       -- vertical splits go to the right of the current window
vim.opt.swapfile = false                        -- create swapfile
vim.opt.termguicolors = true                    -- support termguicolors
vim.opt.timeoutlen = 1000 
vim.opt.undofile = true                         -- persistent undo
vim.opt.writebackup = false                     -- stop a file from being edited if it is being edited by another file
vim.opt.expandtab = true                        -- tabs as spaces
vim.opt.shiftwidth = 4                          -- spaces used for autoindenw
vim.opt.tabstop = 4                             -- spaces that a tab counts for
vim.opt.cursorline = true                       -- current line highlighting
vim.opt.number = true                           -- line numbers
vim.opt.relativenumber = false                  -- relative line numbering
vim.opt.numberwidth = 4                         -- column width
vim.opt.signcolumn = "yes"                      -- show the sign column
vim.opt.wrap = false                            -- show everything on one long line
vim.opt.scrolloff = 8                           -- minimal number of lines to show above/below the cursor
vim.opt.sidescrolloff = 8                       -- minimal number of characters to show above/below the cursor

vim.opt.shortmess:append "c"

-- vim scripts; can execute vim scripts in lua by using vim.cmd
vim.cmd "set whichwrap+=<,>,[,],h,l"            -- allows these keys to wrap lines
vim.cmd [[set iskeyword+=-]]                    -- Makes it so that words with a dash "-" are treated as one word
vim.cmd [[set formatoptions-=cro]]              -- what does this do?
                                                                                              
