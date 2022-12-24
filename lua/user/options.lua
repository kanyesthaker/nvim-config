-- :help options
o = vim.opt                               -- alias vim.opt as o
local options = {
    backup = false,                          -- create backup file?
    clipboard = "unnamedplus",               -- access system clipboard
    cmdheight = 2,                           -- Space in messages
    completeopt = { "menuone", "noselect" }, -- cmp
    conceallevel = 0,                        -- See backtics in markdown
    fileencoding = "utf-8",                  -- self explanatory
    hlsearch = true,                         -- highlight search matches
    ignorecase = true,                       -- ignorecase in search
    mouse = "a",                             -- allow mouse usage in nvim
    pumheight = 10,                          -- popup menu height
    showmode = false,                        -- Don't show -- INSERT -- or -- VISUAL --
    showtabline = 4,                         -- show tab lines
    smartcase = true,                        -- smart case
    smartindent = true,                      -- smart indent
    splitbelow = true,                       -- horizontal splits go below current window
    splitright = true,                       -- vertical splits go to the right of the current window
    swapfile = false,                        -- create swapfile
    termguicolors = true,                    -- support termguicolors
    timeoutlen = 1000, 
    undofile = true,                         -- persistent undo
    writebackup = false,                     -- stop a file from being edited if it is being edited by another file
    expandtab = true,                        -- tabs as spaces
    shiftwidth = 4,                          -- spaces used for autoindenw
    tabstop = 4,                             -- spaces that a tab counts for
    cursorline = true,                       -- current line highlighting
    number = true,                           -- line numbers
    relativenumber = false,                  -- relative line numbering
    numberwidth = 4,                         -- column width
    signcolumn = "yes",                      -- show the sign column
    wrap = false,                            -- show everything on one long line
    scrolloff = 8,                           -- minimal number of lines to show above/below the cursor
    sidescrolloff = 8,                       -- minimal number of characters to show above/below the cursor
}

o.shortmess:append "c"

for key, val in pairs(options) do
    o[key] = val
end

-- vim scripts; can execute vim scripts in lua by using vim.cmd
vim.cmd "set whichwrap+=<,>,[,],h,l"            -- allows these keys to wrap lines
vim.cmd [[set iskeyword+=-]]                    -- Makes it so that words with a dash "-" are treated as one word
vim.cmd [[set formatoptions-=cro]]              -- what does this do?
                                                                                              
