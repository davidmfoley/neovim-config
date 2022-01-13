local actions = require('telescope.actions')

require('telescope').load_extension('coc')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-l>"] = actions.cycle_previewers_next,
      },
      n = {
        ["<esc>"] = actions.close,
      },
    },
  }
}
