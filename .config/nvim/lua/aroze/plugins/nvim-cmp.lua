return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "L3MON4D3/LuaSnip",
    },
    config = function()
        local cmp = require("cmp")
        cmp.setup({
        completion = {
            completeopt = "menu,menuone,preview,noselect",
        },
        snippet = {
            expand = function(args)
                require("luasnip").lsp_expand(args.body)
            end,
        },    
        mapping = cmp.mapping.preset.insert({
            ['<Tab>'] = cmp.mapping.confirm({ select = true }),
        }),
            sources = cmp.config.sources({
                {name = "nvim_lsp"},
                {name = "luasnip"},
                {name = "buffer"},
            })
        })
    end,
}
