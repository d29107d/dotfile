local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local actions = require "telescope.actions"

telescope.setup {
  defaults = {

    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },

    mappings = {
      i = {
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,

        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,

        ["<C-c>"] = actions.close,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,

        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        ["<C-l>"] = actions.complete_tag,
        ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
      },

      n = {
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

        ["j"] = actions.move_selection_next,
        ["k"] = actions.move_selection_previous,
        ["H"] = actions.move_to_top,
        ["M"] = actions.move_to_middle,
        ["L"] = actions.move_to_bottom,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,
        ["gg"] = actions.move_to_top,
        ["G"] = actions.move_to_bottom,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        ["?"] = actions.which_key,
      },
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown",
      prompt_prefix = "🔍",
    },    
    live_grep = {
      theme = "dropdown",
      prompt_prefix = "🔍",
    },
    buffers = {
      theme = "dropdown",
      prompt_prefix = "🔍",
    },
    grep_string = {
      theme = "dropdown",
      prompt_prefix = "🔍",
    },

  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  },
}

function get_visual_selection()
    -- Yank current visual selection into the 'v' register
    --
    -- Note that this makes no effort to preserve this register
    vim.cmd('noau normal! "vy"')

    return vim.fn.getreg('v')
end

function find_by_visual_selection()
    s = get_visual_selection()
    require'telescope.builtin'.grep_string{ shorten_path = true, only_sort_text = true, search = s, use_regex = false }
end

--[[ function get_visual_selection() ]]
--[[   local s_start = vim.fn.getpos("'<") ]]
--[[   local s_end = vim.fn.getpos("'>") ]]
--[[   local n_lines = math.abs(s_end[2] - s_start[2]) + 1 ]]
--[[   local lines = vim.api.nvim_buf_get_lines(0, s_start[2] - 1, s_end[2], false) ]]
--[[   lines[1] = string.sub(lines[1], s_start[3], -1) ]]
--[[   if n_lines == 1 then ]]
--[[     lines[n_lines] = string.sub(lines[n_lines], 1, s_end[3] - s_start[3] + 1) ]]
--[[   else ]]
--[[     lines[n_lines] = string.sub(lines[n_lines], 1, s_end[3]) ]]
--[[   end ]]
--[[     print(lines) ]]
--[[   return table.concat(lines, '\n') ]]
--[[ end ]]
