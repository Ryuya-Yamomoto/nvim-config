return {
  {
    "serhez/teide.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("teide").setup({
        style = "darker",
        transparent = true,
        terminal_colors = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
        },
      })
      vim.cmd([[colorscheme teide]])
    end,
  },
}
