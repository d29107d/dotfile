-- local leap = require('leap')
-- leap.add_default_mappings()

vim.keymap.set({'x', 'o', 'n'}, 'z', '<Plug>(leap-forward-to)')
vim.keymap.set({'x', 'o', 'n'}, 'Z', '<Plug>(leap-backward-to)')

require('flit').setup {
  keys = { f = 'f', F = 'F', t = 't', T = 'T' },
  -- A string like "nv", "nvo", "o", etc.
  labeled_modes = "v",
  multiline = true,
  -- Like `leap`s similar argument (call-specific overrides).
  -- E.g.: opts = { equivalence_classes = {} }
  opts = {}
}
