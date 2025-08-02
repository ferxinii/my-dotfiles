return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        -- { "antosha417/nvim-lsp-file-operations", config = true },
        -- { "folke/neodev.nvim", opts = {} },
      },

      config = function()

            local lspconfig = require("lspconfig")

            -- local capabilities = cmp_nvim_lsp.default_capabilities()

            -- Change the Diagnostic symbols
            -- (not in youtube nvim video)
            vim.diagnostic.config({
                signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "",
                    [vim.diagnostic.severity.WARN] = "",
                    [vim.diagnostic.severity.INFO] = "",
                    [vim.diagnostic.severity.HINT] = "",
                },
                },
                virtual_text = true,
                underline = true,
                severity_sort = true,
            })

            lspconfig["pyright"].setup({
            })
            
            lspconfig["clangd"].setup({
                cmd = {vim.fn.stdpath("config") .. "/lua/lsp/clangd-wrapper.sh",
                    -- "clangd",
                    -- "--header-insertion=never", 
                    -- "--compile-commands-dir=" .. vim.fn.stdpath("config") .. "/lua/lsp/",
                 },
            })
            
            lspconfig["r_language_server"].setup({
            })
      end
}
