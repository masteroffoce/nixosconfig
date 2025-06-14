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

require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c" },
{
