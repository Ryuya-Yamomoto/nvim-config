return {
  {
    "kevinhwang91/nvim-ufo",
    dependencies = {
      "kevinhwang91/promise-async",
    },
    event = "VeryLazy",
    config = function()
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
      
      -- 複数のタイミングで全展開を試みる
      local function open_all_folds()
        vim.opt.foldlevel = 99
        pcall(require('ufo').openAllFolds)
      end
      
      vim.api.nvim_create_autocmd({"BufReadPost", "BufWinEnter"}, {
        callback = function()
          vim.defer_fn(open_all_folds, 100)  -- 100ms遅延
        end,
      })
    end,
  },
}
