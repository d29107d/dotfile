local wk = require("which-key")
wk.setup {
  plugins = {
    marks = false,
    registers = false,
    spelling = { enabled = false, suggestions = 20 },
    presets = {
      operators = false,
      motions = false,
      text_objects = false,
      windows = false,
      nav = false,
      z = false,
      g = false
    }
  }
}

local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function()
  local float = Terminal:new({ direction = "float" })
  return float:toggle()
end
local toggle_lazygit = function()
  local lazygit = Terminal:new({ cmd = 'lazygit', direction = "float" })
  return lazygit:toggle()
end

local mappings = {
  e = { ":NvimTreeToggle<cr>", "Toggle NvimTree" },
  h = {
    h = { ":nohl<cr>", "No highlight" },
    c = { ":ccl<cr>", "Close quickfix window" },
  },
  q = { ":q<cr>", "Quit" },
  Q = { ":wq<cr>", "Save & Quit" },
  w = { ":w<cr>", "Save" },
  --[[ x = { ":bdelete<cr>", "Close" }, ]]
  E = { ":e ~/.config/nvim/init.lua<cr>", "Edit config" },
  f = {
    name = "Find Files",
    r = { "<cmd>TroubleToggle lsp_references<cr>", "Toggle lsp_references" },
    x = { "<cmd>lua vim.lsp.buf.format { async = true }<cr>", "Toggle lsp format" },
    b = { "<cmd>Telescope buffers <cr>", "Find buffer" },
    f = { "<cmd>Telescope find_files <cr>", "Find file" },
    --[[ m = { ":<C-U><C-R>=printf(\"Leaderf mru %s\", \"\")<CR><CR>", "Find mru" }, ]]
    --[[ t = { ":<C-U><C-R>=printf(\"Leaderf bufTag %s\", \"\")<CR><CR>", "Find bufTag" }, ]]
    --[[ l = { ":<C-U><C-R>=printf(\"Leaderf line %s\", \"\")<CR><CR>", "Find line" }, ]]
  },
  --[[ f = { ":Telescope find_files<cr>", "Telescope Find Files" }, ]]
  --[[ r = { ":Telescope live_grep<cr>", "Telescope Live Grep" }, ]]
  t = {
    a = { "<cmd>ToggleAlternate<cr>", "Toggle Alternate" },
    t = { ":ToggleTerm<cr>", "Split Below" },
    f = { toggle_float, "Floating Terminal" },
    l = { toggle_lazygit, "LazyGit" }
  },
  l = {
    name = "LSP",
    i = { ":LspInfo<cr>", "Connected Language Servers" },
    k = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
    K = { "<cmd>Lspsaga hover_doc<cr>", "Hover Commands" },
    w = { '<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', "Add Workspace Folder" },
    W = { '<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', "Remove Workspace Folder" },
    l = {
      '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>',
      "List Workspace Folders"
    },
    t = { '<cmd>lua vim.lsp.buf.type_definition()<cr>', "Type Definition" },
    d = { '<cmd>lua vim.lsp.buf.definition()<cr>', "Go To Definition" },
    D = { '<cmd>lua vim.lsp.buf.declaration()<cr>', "Go To Declaration" },
    r = { '<cmd>lua vim.lsp.buf.references()<cr>', "References" },
    R = { '<cmd>Lspsaga rename<cr>', "Rename" },
    a = { '<cmd>lua vim.lsp.buf.code_action()<cr>', "Code Action" },
    e = { '<cmd>Lspsaga show_line_diagnostics<cr>', "Show Line Diagnostics" },
    n = { '<cmd>Lspsaga diagnostic_jump_next<cr>', "Go To Next Diagnostic" },
    N = { '<cmd>Lspsaga diagnostic_jump_prev<cr>', "Go To Previous Diagnostic" }
  },
  m = {
    m = { '<cmd>messages<cr>', "Show messages" },
  },
  --z = {
  --  name = "Focus",
  --  z = { ":ZenMode<cr>", "Toggle Zen Mode" },
  --  t = { ":Twilight<cr>", "Toggle Twilight" }
  --},
  p = {
    name = "Packer",
    r = { ":PackerClean<cr>", "Remove Unused Plugins" },
    c = { ":PackerCompile profile=true<cr>", "Recompile Plugins" },
    i = { ":PackerInstall<cr>", "Install Plugins" },
    p = { ":PackerProfile<cr>", "Packer Profile" },
    s = { ":PackerSync<cr>", "Sync Plugins" },
    S = { ":PackerStatus<cr>", "Packer Status" },
    u = { ":PackerUpdate<cr>", "Update Plugins" }
  },
  --[[ x = { ]]
  --[[   name = "Trouble" ]]
  --[[ } ]]
}

local opts = { prefix = '<leader>' }
wk.register(mappings, opts)
