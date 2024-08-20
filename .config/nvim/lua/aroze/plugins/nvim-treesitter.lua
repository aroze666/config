return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    event = {"BufReadPre", "BufNewFile"},
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = {
                "c",
                "cpp",
                "python",
                "lua",
                "html",
                "css",
                "javascript",
                "latex",
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = true
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>"
                }
            }
        })
    end,
}
