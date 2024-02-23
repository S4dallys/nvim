function ColorMyPencils(color)
	color = color or "poimandres"
	vim.cmd.colorscheme(color)

    -- vim.api.nvim_set_hl(0, "NocatppuccinrmalFloat", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, 'LineNr', { fg = "#787867"} )
    -- vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = "#3ce6e6"} )
    -- vim.api.nvim_set_hl(0, 'visual', { bg = "#6e314d"} )
    -- vim.api.nvim_set_hl(0, 'CursorLine', { fg = "none", bg = "#380409"} )
    -- vim.api.nvim_set_hl(0, 'ColorColumn', { fg = "none", bg = "none"} )
end



ColorMyPencils()
