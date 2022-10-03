local autosave = require("auto-save")


autosave.setup({
    enabled = false,
    execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
    events = {"InsertLeave", "TextChanged"},
    -- function that determines whether to save the current buffer or not
	-- return true: if buffer is ok to be saved
	-- return false: if it's not ok to be saved
	condition = function(buf)
		local fn = vim.fn
		local utils = require("auto-save.utils.data")
		if
			fn.getbufvar(buf, "&modifiable") == 1 and
            utils.in(fn.getbufvar(buf, "&filetype"), {'md', 'tex', 'org', 'txt'}) then
			return true -- met condition(s), can save
		end
		return false -- can't save
	end,
    write_all_buffers = false,
    debounce_delay = 135
})
