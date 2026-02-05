-- Neovim の基本設定

-- インデント���定
vim.opt.expandtab = true      -- タブをスペースに変換
vim.opt.shiftwidth = 2        -- > や < でのインデント幅（ここが重要！）
vim.opt.tabstop = 2           -- タブ文字の表示幅
vim.opt.softtabstop = 2       -- Tabキーを押したときの幅
vim.opt.smartindent = true    -- 賢い自動インデント
vim.opt.autoindent = true     -- 自動インデント

-- 表示設定
vim.opt.number = true         -- 行番号を表示
vim.opt.relativenumber = true -- 相対行番号
vim.opt.cursorline = true     -- カーソル行をハイライト
vim.opt.signcolumn = "yes"    -- サインカラムを常に表示
vim.opt.wrap = false          -- 行の折り返しをしない

-- 検索設定
vim.opt.ignorecase = true     -- 大文字小文字を区別しない
vim.opt.smartcase = true      -- 大文字が含まれる場合は区別する

-- クリップボード設定
vim.opt.clipboard = "unnamedplus"  -- システムクリップボードを使用

-- その他
vim.opt.termguicolors = true  -- True colorをサポート
vim.opt.updatetime = 300      -- 更新時間を短く
vim.opt.timeoutlen = 500      -- キーマップのタイムアウト

-- init.lua に追加
vim.opt.ambiwidth = 'single'  -- または 'double'
