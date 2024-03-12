local ls = require("luasnip")

ls.config.set_config({
    updateevents = "TextChanged, TextChangedI",
    enable_autosnippets = true
})

vim.keymap.set({"i", "s"}, "<C-j>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-k>", function() ls.jump(-1) end, {silent = true})
vim.keymap.set("n", "<leader>lss", ":edit C:/Users/S4d/Appdata/Local/nvim/after/plugin/luasnip.lua<CR>")

local s = ls.s
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

ls.add_snippets("lua",
{
    s("lr", fmt("local {} = require('{}')",
    { i(1), rep(1) })),

    s("keymap", fmt('vim.keymap.set("{}", "{}", "{}")',
    { i(1, "n"), i(2, ""), i(3) }))
})

ls.add_snippets("json",
{
    s(",", fmt('"{}": "{}",',
    { i(1, "field"), i(2, "value") }))
})

ls.add_snippets("javascript",
{
    s("ag", fmt([[
    app.get("/{}", (req, res) => {{
        {}
    }})
    ]],
    { i(1), i(2) })),

    s("ap", fmt([[
    app.post("/{}", (req, res) => {{
        {}
    }})
    ]],
    { i(1), i(2) }))
})
