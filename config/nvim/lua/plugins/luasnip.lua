return {
    "L3MON4D3/LuaSnip",
    config = function()
        require("luasnip").setup({})
        require("luasnip").config.set_config({ -- Setting LuaSnip config
          enable_autosnippets = false,
          update_events = 'TextChanged,TextChangedI'
        })
        require("luasnip.loaders.from_lua").lazy_load({ paths = vim.fn.stdpath("config") .. "/lua/snippets/" })
        local ls = require("luasnip")
        vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-H>", function() ls.jump(-1) end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-E>", function()
            if ls.choice_active() then
                ls.change_choice(1)
            end
        end, {silent = true})
    end,
}

