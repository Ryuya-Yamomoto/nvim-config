return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    -- Telescopeの設定
    require('telescope').setup({
      defaults = {
        -- プレビューの設定
        preview = {
          treesitter = false,  -- Tree-sitterハイライトを無効化
        },
      },
      pickers = {
        find_files = {
          preview = { treesitter = false },
        },
        live_grep = {
          preview = { treesitter = false },
        },
        help_tags = {
          preview = { treesitter = false },
        },
      },
    })

    -- キーマップ
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
  end
}
