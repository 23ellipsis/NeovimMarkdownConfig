local M = {}

function M.highlight_headings_fullwidth()
  local ns = vim.api.nvim_create_namespace("MarkdownFullLineHighlight")
  local bufnr = vim.api.nvim_get_current_buf()

  -- Clear previous extmarks
  vim.api.nvim_buf_clear_namespace(bufnr, ns, 0, -1)

  local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
  for i, line in ipairs(lines) do
    local heading = line:match("^(#+)%s")
    if heading then
      local level = math.min(#heading, 6)
      local hl_group = "@markup.heading." .. tostring(level)

      vim.api.nvim_buf_set_extmark(bufnr, ns, i - 1, 0, {
        end_line = i,
        hl_group = hl_group,
        hl_eol = true,
        priority = 100,
      })
    end
  end
end

return M

