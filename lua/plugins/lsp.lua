local config = function()
    local capab = require("blink.cmp").get_lsp_capabilities()
    require("lspconfig").lua_ls.setup {
        capabilities = capab,
        settings = {
            Lua = {
                runtime = {
                    version = "LuaJit"
                },
                diagnostics = {
                    globals = {"vim"},
                },
                workspace = {
                    library = {
                        vim.env.VIMRUNTIME,
                    }
                }
            }
        }
    }
    require("mason").setup({
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    })
    require("mason-lspconfig").setup({
        ensure_installed = {'lua_ls'},
        handlers = {
            function(server_name)
                require('lspconfig')[server_name].setup({})
            end,
        }
    })
end
return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "saghen/blink.cmp",
        "rafamadriz/friendly-snippets",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "saadparwaiz1/cmp_luasnip",
        "L3MON4D3/LuaSnip",
    },
    config = config
}
