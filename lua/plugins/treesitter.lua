return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      -- プラグインが読み込まれるまで待つ
      local ok, configs = pcall(require, "nvim-treesitter.configs")
      if not ok then
        vim.notify("nvim-treesitter.configs not found", vim.log.levels.ERROR)
        return
      end
      configs.setup({
        ensure_installed = {
          "lua",
          "vim",
          "vimdoc",
          "python",
          "typescript",
          "javascript",
          "html",
          "css",
          "json",
          "markdown",
          "bash",
        },
        
        auto_install = true,
        sync_install = false,
        
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        
        indent = {
          enable = true,
        },
        
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<CR>",
            node_incremental = "<CR>",
            scope_incremental = "<S-CR>",
            node_decremental = "<BS>",
          },
        },
      })
    end,
  },
  
  -- 一旦コメントアウト
  -- {
  --   "nvim-treesitter/nvim-treesitter-textobjects",
  --   dependencies = { "nvim-treesitter/nvim-treesitter" },
  --   event = { "BufReadPost", "BufNewFile" },
  -- },
}
