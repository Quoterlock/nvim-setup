require('lualine').setup {
  options = {
    --theme = 'kanagawa',
    theme = 'gruvbox',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      } 
    }
  }
}
