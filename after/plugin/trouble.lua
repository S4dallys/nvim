vim.keymap.set("n", "<leader>tt", function() vim.cmd("TroubleToggle document_diagnostics") end)
vim.keymap.set("n", "<leader>pt", function() vim.cmd("TodoTelescope") end)
local signs = { Error = "", Warn = "", Hint = "󰌵", Info = "" }

for type, icon in pairs(signs) do
local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
