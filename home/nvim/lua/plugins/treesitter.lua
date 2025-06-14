-- ~/.config/nvim/lua/config/plugins/treesitter.lua
return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "python", "c" },
        highlight = { enable = true },
      })
    end,
  },
}

