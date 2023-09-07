local lsp = require('lsp-zero').preset({'recommended'})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

local cmp = require('cmp')

cmp.setup({
    sources = {
        {name = 'nvim_lsp'},
        {name = 'buffer'},
    },
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({select = true}),
    }
})
