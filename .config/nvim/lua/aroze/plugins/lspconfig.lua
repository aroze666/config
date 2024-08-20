return {
    "neovim/nvim-lspconfig",
    event = {"BufReadPre", "BufNewFile"},
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local capabilities = cmp_nvim_lsp.default_capabilities()
        lspconfig["clangd"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        lspconfig["html"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        lspconfig["lua_ls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        lspconfig["pylsp"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        lspconfig["texlab"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        lspconfig["tsserver"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })


    end,
}
