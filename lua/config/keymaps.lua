-- クリップボード操作のキーマップ
local keymap = vim.keymap.set

-- ノーマルモード・ビジュアルモード共通
-- <leader>y: 選択範囲をクリップボードにコピー
keymap({"n", "v"}, "<leader>y", '"+y', { desc = "Yank to clipboard" })

-- <leader>d: 選択範囲を切り取ってクリップボードにコピー
keymap({"n", "v"}, "<leader>d", '"+d', { desc = "Delete to clipboard" })

-- <leader>p: クリップボードから貼り付け
keymap({"n", "v"}, "<leader>p", '"+p', { desc = "Paste from clipboard" })

-- 追加で便利なマッピング
-- <leader>Y: 行全体をクリップボードにコピー
keymap("n", "<leader>Y", '"+Y', { desc = "Yank line to clipboard" })

-- <leader>P: カーソル前にクリップボードから貼り付け
keymap({"n", "v"}, "<leader>P", '"+P', { desc = "Paste before from clipboard" })
