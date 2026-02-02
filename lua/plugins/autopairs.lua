return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({
        check_ts = true,  -- Treesitterを使って賢くインデント
        ts_config = {
          lua = { "string" },
          javascript = { "template_string" },
        },
      })
    end,
  },
}
