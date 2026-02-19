local M = {}

local ns = vim.api.nvim_create_namespace("hexcolor")

local hl_cache = {}

local function normalize_hex(hex)
  return hex:upper()
end

local function get_hl_group(hex)
  hex = normalize_hex(hex)

  if hl_cache[hex] then
    return hl_cache[hex]
  end

  local group = "HexColor_" .. hex:sub(2)

  vim.api.nvim_set_hl(0, group, {
    bg = hex,
    fg = "FFFFFF"
  })

  hl_cache[hex] = group
  return group
end

function M.highlight_buffer(bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()

  vim.api.nvim_buf_clear_namespace(bufnr, ns, 0, -1)

  local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)

  for row, line in ipairs(lines) do
    local col = 1

    while true do
      local s, e = line:find("#%x%x%x%x%x%x", col)
      if not s then
        s, e = line:find("#%x%x%x", col)
      end

      if not s then
        break
      end

      local hex = line:sub(s, e)
      local hl = get_hl_group(hex)

      vim.api.nvim_buf_set_extmark(bufnr, ns, row - 1, s - 1, {
        end_col = e,
        hl_group = hl,
      })

      col = e + 1
    end
  end
end

return M

