local custom = require'lualine.themes.palenight'

require('lualine').setup {
    options = { theme  = custom },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff'},
        lualine_c = {'filename', 'diagnostics'},
        lualine_x = {'filetype', 'encoding', 'location'},
        lualine_y = {},
        lualine_z = {}
    }
}
