-- function split (inputstr, sep)
--         if sep == nil then
--                 sep = "%s"
--         end
--         local t={}
--         for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
--                 table.insert(t, str)
--         end
--         return t
-- end

require('lualine').setup({
    options = {
        section_separators = { left = ' ', right = ' ' },
        component_separators = { left = ' ', right = ' ' }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {
        {
            'filename',
            path = 1,
            -- fmt = '%s',
        }
    },
        lualine_c = {'diagnostics','diff','branch' },
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    }
})
