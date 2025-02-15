require('lualine').setup {
  options = {
    theme = 'kanagawa',
    --theme = 'kanagawa',
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
