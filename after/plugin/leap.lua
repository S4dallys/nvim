local leap = require('leap').opts

leap.safe_labels = ''
leap.labels = 'abcdefghijklmnopqrstuvwxyz'
leap.special_keys = {
  next_target = '',
  prev_target = '',
  next_group = '<Enter>',
  prev_group = '<S-Enter>',
}

vim.keymap.set({'n','x'}, '<Enter>', function ()
  local current_window = vim.fn.win_getid()
  require('leap').leap { target_windows = { current_window } }
end)

vim.api.nvim_set_hl(0, "LeapLabelPrimary", { link = "visual" })
vim.api.nvim_set_hl(0, "LeapLabelSecondary", { link = "IncSearch" })
-- vim.api.nvim_set_hl(0, "LeapBackdrop", {  })
