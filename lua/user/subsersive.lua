local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("n", "<leader>uu", "<plug>(SubversiveSubstitute)", opts)
keymap("n", "<leader>ul", "<plug>(SubversiveSubstituteLine)", opts)
keymap("n", "<leader>ue", "<plug>(SubversiveSubstituteToEndOfLine)", opts)

keymap("n", "<leader>s", "<plug>(SubversiveSubstituteRange)", opts)
keymap("x", "<leader>s", "<plug>(SubversiveSubstituteRange)", opts)
keymap("n", "<leader>ss", "<plug>(SubversiveSubstituteWordRange)", opts)
