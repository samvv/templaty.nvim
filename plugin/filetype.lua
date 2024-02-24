
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

vim.api.nvim_create_autocmd(
    {
        "BufNewFile",
        "BufRead",
    },
    {
        pattern = "*.tply",
        callback = function(ev)

          local chunks = split(ev.file, ".")
          local buf = vim.api.nvim_get_current_buf()

          if #chunks > 2 then
            local ext = chunks[#chunks-1]
            local lang = ext_to_ftype[ext]
            if lang ~= nil then
              vim.api.nvim_buf_set_option(buf, "filetype", "templaty."..lang)
              return
            end
          end

          -- Only run when nothing matched
          vim.api.nvim_buf_set_option(buf, "filetype", "templaty")
        end
    }
)

