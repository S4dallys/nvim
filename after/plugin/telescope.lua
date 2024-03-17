local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>pg', builtin.git_status, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
      "node_modules"
    },
    preview = {
        hide_on_startup = true -- hide previewer when picker starts
    }
  },
  pickers = {
      git_status = {
          preview = {
              hide_on_startup = false
          }
      },
      buffers = {
          preview = {
              hide_on_startup = false
          }
      }
  }
}
