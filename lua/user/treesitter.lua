local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup {
    ensure_installed = "all", -- "all" or a list of languages you want to support. "maintained" was deprecated in early 2022
    sync_install = false,
    ignore_install = { "" }, -- parsers to ignore
    highlight = {
        enable = true,
        disable = { "" },
        additional_vim_regex_highlighting = true,
    },
    indent = { enable = true, disable = { "yaml" } },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    }
}
