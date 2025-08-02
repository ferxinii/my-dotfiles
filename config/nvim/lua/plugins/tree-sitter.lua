return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
    require("nvim-treesitter.configs").setup({
        ensure_installed = {"lua", "c", "vim", "vimdoc", "markdown", "python", "latex"},
        auto_install = false,
        highlight = { enable = true, additional_vim_regex_highlighting = false },
      })
  end,
}
