local custom = require'lualine.themes.palenight'

require('lualine').setup {
    options = {
        theme = custom,
        -- component_separators = { left = '', right = ''},
        -- section_separators = { left = '', right = ''},
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch' },
        lualine_c = {'filename','diagnostics'},
        lualine_x = { 'diff', 'filetype', 'encoding', 'location'},
        lualine_y = {},
        lualine_z = {}
    }
}
