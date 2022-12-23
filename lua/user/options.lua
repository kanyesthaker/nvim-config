-- :help options
o = vim.opt                               -- alias vim.opt as o
o.backup = false                          -- create backup file?
o.clipboard = "unnamedplus"               -- access system clipboard
o.cmdheight = 2                           -- Space in messages
o.completeopt = { "menuone", "noselect" } -- cmp
o.conceallevel = 0                        -- See backtics in markdown
o.fileencoding = "utf-8"                  -- self explanatory
o.hlsearch = true                         -- highlight search matches
o.ignorecase = true                       -- ignorecase in search
o.mouse = "a"                             -- allow mouse usage in nvim
o.pumheight = 10                          -- popup menu height
o.showmode = false                        -- Don't show -- INSERT -- or -- VISUAL --
o.showtabline = 2                         -- show tab lines
o.smartcase = true                        -- smart case
o.smartindent = true                      -- smart indent
o.splitbelow = true                       -- horizontal splits go below current window
o.splitright = true                       -- vertical splits go to the right of the current window
o.swapfile = false                        -- create swapfile
o.termguicolors = true                    -- support termguicolors
o.timeoutlen = 1000 
o.undofile = true                         -- persistent undo
o.writebackup = false                     -- stop a file from being edited if it is being edited by another file
o.expandtab = true                        -- tabs as spaces
o.shiftwidth = 4                          -- spaces used for autoindenw
o.tabstop = 4                             -- spaces that a tab counts for
o.cursorline = true                       -- current line highlighting
o.number = true                           -- line numbers
o.relativenumber = false                  -- relative line numbering
o.numberwidth = 4                         -- column width
o.signcolumn = "yes"                      -- show the sign column
o.wrap = false                            -- show everything on one long line
o.scrolloff = 8                           -- minimal number of lines to show above/below the cursor
o.sidescrolloff = 8                       -- minimal number of characters to show above/below the cursor

o.shortmess:append "c"

-- vim scripts; can execute vim scripts in lua by using vim.cmd
vim.cmd "set whichwrap+=<,>,[,],h,l"            -- allows these keys to wrap lines
vim.cmd [[set iskeyword+=-]]                    -- Makes it so that words with a dash "-" are treated as one word
vim.cmd [[set formatoptions-=cro]]              -- what does this do?
                                                                                              
