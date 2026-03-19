local keymap = vim.keymap.set

-- クリップボード操作のキーマップ
keymap({"n", "v"}, "<leader>y", '"+y', { desc = "Yank to clipboard" })
keymap({"n", "v"}, "<leader>d", '"+d', { desc = "Delete to clipboard" })
keymap({"n", "v"}, "<leader>p", '"+p', { desc = "Paste from clipboard" })
keymap("n", "<leader>Y", '"+Y', { desc = "Yank line to clipboard" })
keymap({"n", "v"}, "<leader>P", '"+P', { desc = "Paste before from clipboard" })
keymap("n", "<leader>cp", ':let @+ = expand("%:p")<CR>', { desc = "Copy file path to clipboard" })
keymap("i", "jj", "<Esc>")

-- 診断（エラー表示）
keymap('n', '<leader>e', vim.diagnostic.open_float, { desc = 'エラー詳細表示' })
keymap('n', '[d', vim.diagnostic.goto_prev, { desc = '前の診断へ' })
keymap('n', ']d', vim.diagnostic.goto_next, { desc = '次の診断へ' })

-- LSP関係のジャンプ機能
keymap('n', 'gd', '<cmd>Telescope lsp_definitions<CR>', { desc = '定義ジャンプ' })
keymap('n', 'gr', '<cmd>Telescope lsp_references<CR>', { desc = '参照一覧' })
keymap('n', 'gi', '<cmd>Telescope lsp_implementations<CR>', { desc = '実装ジャンプ' })
keymap('n', 'K', vim.lsp.buf.hover, { desc = 'ホバー情報' })
