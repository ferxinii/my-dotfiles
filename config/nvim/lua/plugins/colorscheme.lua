return {
    {
      'sainnhe/sonokai',
      lazy = false,
      priority = 1000,
      config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.sonokai_enable_italic = true
        vim.g.sonokai_style = 'default'
        vim.cmd.colorscheme('sonokai')
      end
    }

}

    -- {
    --   'sainnhe/sonokai',
    --   lazy = false,
    --   priority = 1000,
    --   config = function()
    --     -- Optionally configure and load the colorscheme
    --     -- directly inside the plugin declaration.
    --     vim.g.sonokai_enable_italic = true
    --     vim.g.sonokai_style = 'default'
    --     vim.cmd.colorscheme('sonokai')
    --   end
    -- }

--[[
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "kanagawa-wave"
    end,
  },
}
--]]
--[[
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- make sure it loads first
    config = function()
        -- load the colorscheme here
        vim.cmd.colorscheme "catppuccin"    
    end,
  },
}
--]]
