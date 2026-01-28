return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup{
      size = 20,
      open_mapping = [[<leader>tt]],
      hide_numbers = true,
      shade_filetypes = {},
      autochdir = false,
      shade_terminals = true,
      start_in_insert = true,        -- これでInsertモードに入る
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      persist_mode = true,
      direction = 'float',
      close_on_exit = true,
      clear_env = false,
      shell = vim.o.shell,
      auto_scroll = true,
      float_opts = {
        border = 'curved',
        winblend = 3,
        title_pos = 'center',
      },
      winbar = {
        enabled = false,
        name_formatter = function(term)
          return term.name
        end
      },
      -- on_open はコメントアウト（start_in_insert = true で十分）
      -- on_open = function(term)
      --   vim.keymap.set('n', '<CR>', '<CR>', { buffer = term.bufnr, noremap = true })
      --   vim.cmd("startinsert")
      -- end,
    }
    
    -- lazygit設定
    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new({
      cmd = "lazygit",
      hidden = true,
      direction = "float",
      on_open = function(term)
        vim.cmd("startinsert")
        vim.keymap.set('t', '<esc>', '<esc>', { buffer = term.bufnr })
      end,
      on_close = function(term)
        vim.cmd("startinsert")
      end,
    })
    
    function _lazygit_toggle()
      lazygit:toggle()
    end
    
    vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
    
    -- ターミナルモードから抜けるキーマップ
    vim.keymap.set('t', '<C-[><C-[>', [[<C-\><C-n>]], { desc = "Exit terminal mode" })
  end
}
