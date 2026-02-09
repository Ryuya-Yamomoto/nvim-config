local keymap = vim.keymap.set

-- クリップボード操作のキーマップ
keymap({"n", "v"}, "<leader>y", '"+y', { desc = "Yank to clipboard" })
keymap({"n", "v"}, "<leader>d", '"+d', { desc = "Delete to clipboard" })
keymap({"n", "v"}, "<leader>p", '"+p', { desc = "Paste from clipboard" })
keymap("n", "<leader>Y", '"+Y', { desc = "Yank line to clipboard" })
keymap({"n", "v"}, "<leader>P", '"+P', { desc = "Paste before from clipboard" })
keymap("n", "<leader>cp", ':let @+ = expand("%:p")<CR>', { desc = "Copy file path to clipboard" })
keymap("i", "jj", "<Esc>")

-- LSP関係のジャンプ機能
keymap('n', '<leader>gd', '<cmd>Telescope lsp_definitions<CR>', { desc = '定義ジャンプ (Telescope)' })
keymap('n', '<leader>gr', '<cmd>Telescope lsp_references<CR>', { desc = '参照一覧 (Telescope)' })
