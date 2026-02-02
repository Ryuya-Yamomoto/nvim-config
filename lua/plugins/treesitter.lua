return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      ensure_installed = {
        "lua", "vim", "python", "typescript",
        "javascript", "html", "css", "json", "markdown",
        "bash", "pug",
      },
      highlight = { enable = true },
      indent = { enable = true },
    },
  },
  
  {
    "digitaltoad/vim-pug",
    ft = "pug",
  },
}
