local fn = vim.fn

-- Install packer, lua-based package manager
local path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(path)) > 0 then
    PACKER_BOOTSTRAP = fn.system{
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        path,
    }
    print "Installing packer, please restart nvim"
    vim.cmd [[packadd packer.nvim]]
end

-- vimscript that reloads nvim automatically when plugins.lua is saved
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- use a protected call (similar to a try-except)
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Open a popup
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install plugins HERE
return packer.startup(function (use)
    -- plugins start here
    use "wbthomason/packer.nvim" -- Self-manages packer.nvm
    use "nvim-lua/popup.nvim" -- useful for other plugins
    use "nvim-lua/plenary.nvim" -- useful for other plugins
    use "windwp/nvim-autopairs" -- Autoclose quotes, etc.
    use { "numToStr/Comment.nvim", config = function() require('Comment').setup() end } -- Easy commenting
    use "kyazdani42/nvim-web-devicons" -- Better icons for nvim-tree
    use "kyazdani42/nvim-tree.lua" -- nvim-tree
    use "akinsho/bufferline.nvim" -- bufferline for better styled buffers
    use "moll/vim-bbye" -- make it easier to exit buffers without closing nvim 
    use "akinsho/toggleterm.nvim" -- toggle term
    use {"iamcco/markdown-preview.nvim", run="cd app && yarn install" } -- Preview markdown files! Run :markdown-preview
    use "goolord/alpha-nvim"
    use "antoinemadec/FixCursorHold.nvim"
    use "arcticicestudio/nord-vim" -- Nord colorscheme
    
    use "hrsh7th/nvim-cmp" -- overall completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completion
    use "hrsh7th/cmp-path" -- path completion
    use "hrsh7th/cmp-cmdline" -- commmandline completion
    use "saadparwaiz1/cmp_luasnip" -- snippet completion
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"

    use "L3MON4D3/LuaSnip" -- Snippet engine
    use "rafamadriz/friendly-snippets" -- More snippets

    use "neovim/nvim-lspconfig" -- Enable LSP
    use "williamboman/nvim-lsp-installer" -- language server installer GUI

    -- Telescope 
    use "nvim-telescope/telescope.nvim"
    use 'nvim-telescope/telescope-media-files.nvim'

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }
    use "JoosepAlviste/nvim-ts-context-commenstring"

    -- Gitsigns
    use "lewis6991/gitsigns.nvim"

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)

