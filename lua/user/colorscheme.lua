vim.cmd [[
try
  colorscheme everforest
  colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme everforest
  " colorscheme default
  " set background=dark
endtry
]]
