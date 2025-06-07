vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46_cache/"

require("config.lazy")

dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- If no files were passed on command line
    if vim.fn.argc() == 0 then
      vim.cmd("Nvdash")
    end
  end,
})

vim.g.mapleader = ' '  -- sets space as leader

vim.keymap.set('n', '<Leader>n', ':bnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>p', ':bprev<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>d', ':Nvdash<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>q', ':q!<CR>', { noremap = true, silent = true })
-- Auto-load theme after colorscheme changes
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    require("custom.markdown_theme")
  end,
})
vim.api.nvim_set_hl(0, "MarkdownHRLine", { fg = "#0a0768" })  -- change to any color you like

-- Or load once at startup
require("custom.markdown_theme")
require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  }
}
vim.api.nvim_create_augroup("MarkdownConceal", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = "MarkdownConceal",
  pattern = "markdown",
  callback = function()
    vim.cmd([[
      " Conceal heading markers # through ###### (1 to 6 hashes)
      syntax match MarkdownHeadingMarker /^#\{1,6}/ conceal

      " Conceal bold markers **
      syntax match MarkdownBoldMarker /\*\*/ conceal

      " Conceal italic markers * (single asterisk only)
      syntax match MarkdownItalicMarker /\*/ conceal

      " Conceal inline code backticks `
      syntax match MarkdownInlineCodeMarker /`/ conceal

      highlight default link MarkdownHeadingMarker Conceal
      highlight default link MarkdownBoldMarker Conceal
      highlight default link MarkdownItalicMarker Conceal
      highlight default link MarkdownInlineCodeMarker Conceal

      setlocal conceallevel=2
    ]])
  end,
})
vim.api.nvim_create_autocmd({ "BufEnter", "TextChanged", "TextChangedI" }, {
  pattern = "*.md",
  callback = function()
    require("custom.hrline").render_hr()
  end,
})
local headings = require("custom.markdown_headings")

vim.api.nvim_create_autocmd({ "BufEnter", "TextChanged", "InsertLeave" }, {
  pattern = "*.md",
  callback = function()
    headings.highlight_headings_fullwidth()
  end,
})

-- keymaps: leader+p brings you back to the prvious tab, leader+n to the next tab and leader+d brings back the dashboard, leader+q does :q!
