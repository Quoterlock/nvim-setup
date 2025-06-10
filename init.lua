require("core.keymaps")
require("core.plugins")
require("core.plugin_config")


vim.cmd [[autocmd BufRead,BufNewFile *.dart set filetype=dart]]

vim.opt.clipboard = "unnamedplus"
--vim.cmd [[
  --highlight Normal guibg=NONE ctermbg=NONE
  --highlight NonText guibg=NONE ctermbg=NONE
--]]
