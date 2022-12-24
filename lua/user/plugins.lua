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
    use "rstacruz/vim-closer" -- Better bracket closing
    use {"iamcco/markdown-preview.nvim", run="cd app && yarn install" } -- Preview markdown files! Run :MarkdownPreview
    
    use "arcticicestudio/nord-vim" -- Nord colorscheme
    
    use "hrsh7th/nvim-cmp" -- overall completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completion
    use "hrsh7th/cmp-path" -- path completion
    use "hrsh7th/cmp-cmdline" -- commmandline completion
    use "saadparwaiz1/cmp_luasnip" -- snippet completion

    use "L3MON4D3/LuaSnip" -- Snippet engine
    use "rafamadriz/friendly-snippets" -- More snippets

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)

