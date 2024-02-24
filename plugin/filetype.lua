
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
    ['.*.py.tply'] = "templatypython"
  }
})

