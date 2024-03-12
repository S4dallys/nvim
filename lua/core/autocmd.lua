vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'handlebars' },
    callback = function()
	    vim.cmd("setlocal ft=html")
    end
})
