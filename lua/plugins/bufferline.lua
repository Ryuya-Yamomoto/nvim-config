return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  keys = {
    { "<C-h>", "<cmd>bprev<CR>", desc = "前のバッファ" },
    { "<C-l>", "<cmd>bnext<CR>", desc = "次のバッファ" },
    { "<C-x>", "<cmd>bd<CR>", desc = "バッファを閉じる" },
  },
  config = function ()
    vim.opt.termguicolors = true
    require("bufferline").setup{}
  end
}
