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
      vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "#181817" })
      vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "#18181a" })
      vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "#18181a", bg = "#18181a" })
    end,
  },
}
