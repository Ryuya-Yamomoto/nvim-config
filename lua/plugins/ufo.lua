return {
  {
    "kevinhwang91/nvim-ufo",
    dependencies = {
      "kevinhwang91/promise-async",
    },
    event = "VeryLazy",
    config = function()
      -- Fold設定
      vim.o.foldcolumn = '1'
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      -- キーマップ
      vim.keymap.set('n', 'zR', require('ufo').openAllFolds, { desc = 'すべて展開' })
      vim.keymap.set('n', 'zM', require('ufo').closeAllFolds, { desc = 'すべて折りたたみ' })
      
      -- UFOの設定
      require('ufo').setup({
        provider_selector = function(bufnr, filetype, buftype)
          return {'treesitter', 'indent'}
        end
      })
    end,
  },
}
