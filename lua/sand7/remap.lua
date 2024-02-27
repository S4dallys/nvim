vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "0", "^")
vim.keymap.set("n", "^", "0")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/Appdata/Local/nvim/lua/sand7/packer.lua<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- split pane remaps
vim.keymap.set("n", "<leader><tab>", "<C-w><C-w>");

-- lsp_zero remaps
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, vim.opts)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, vim.opts)
vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, vim.opts)
vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, vim.opts)
vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, vim.opts)
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, vim.opts)
vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, vim.opts)
vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, vim.opts)
vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, vim.opts)
vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, vim.opts)

-- autoclose remaps (fucken amazing)
vim.keymap.set("i", "\"<tab>", "\"\"<Left>")
vim.keymap.set("i", "'<tab>", "''<Left>")
vim.keymap.set("i", "(<tab>", "()<Left>")
vim.keymap.set("i", "[<tab>", "[]<Left>")
vim.keymap.set("i", "{<tab>", "{}<Left>")
vim.keymap.set("i", "{<CR>", "{<CR>}<ESC>O")
vim.keymap.set("i", "{;<CR>", "{<CR>};<ESC>O")

vim.keymap.set("n", "<leader>te", ":new<CR>:te<CR>:horizontal resize 10<CR>")
