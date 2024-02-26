
function split(input, sep)
  if sep == nil then
    sep = "%s"
  end
  local t = {}
  for str in string.gmatch(input, "([^"..sep.."]+)") do
    table.insert(t, str)
  end
  return t
end

local ext_to_ftype = {
  py = 'python',
}

vim.filetype.add({
  extension = {
    tply = "templaty",
  },
  pattern = {
    ['.*.py.tply'] = function(path, buffer)
      return "templatypython", function(bufnr)
        vim.api.nvim_buf_set_option(bufnr, "shiftwidth", 4)
        vim.api.nvim_buf_set_option(bufnr, "tabstop", 4)
        vim.api.nvim_buf_set_option(bufnr, "softtabstop", -1)
      end
    end
  }
})

