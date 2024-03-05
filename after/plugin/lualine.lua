local custom = require'lualine.themes.palenight'

require('lualine').setup {
    options = { theme  = custom },
    sections = {
        lualine_x = {'filetype', 'encoding', 'location'},
        lualine_y = {},
        lualine_z = {}
    }
}
