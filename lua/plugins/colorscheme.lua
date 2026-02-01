return {
  'everviolet/nvim', name = 'evergarden',
  priority = 1000,
  opts = {
    theme = {
      variant = 'fall',
      accent = 'green',
    },
    editor = {
      transparent_background = true,
      sign = { color = 'none' },
      float = {
        color = 'none',  -- フロートウィンドウも透過
        solid_border = false,
      },
      completion = {
        color = 'none',  -- 補完ウィンドウも透過
      },
    },
  }
}
