local M = {}
local ns_id = vim.api.nvim_create_namespace("hrline")

function M.render_hr()
  vim.api.nvim_buf_clear_namespace(0, ns_id, 0, -1)

  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
  for i, line in ipairs(lines) do
    if line:match("^%s*%-%-%-%s*$") then
      local width = vim.api.nvim_win_get_width(0)
      local hr = string.rep("─", width)
      vim.api.nvim_buf_set_extmark(0, ns_id, i - 1, 0, {
        virt_text = { { hr, "MarkdownHRLine" } },
        virt_text_pos = "overlay",
        hl_mode = "combine",
      })
    end
  end
end

return M

