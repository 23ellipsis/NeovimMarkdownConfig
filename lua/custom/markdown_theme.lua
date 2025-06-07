local hl = vim.api.nvim_set_hl

local hl = vim.api.nvim_set_hl

hl(0, "@markup.heading.4", { fg = "#448aff", bg = "#0a1c3d", bold = true }) -- electric blue
hl(0, "@markup.heading.1", { fg = "#0434f2", bg = "#050d2d", bold = true })
hl(0, "@markup.heading.3", { fg = "#2962ff", bg = "#01183f", bold = true })
hl(0, "@markup.heading.5", { fg = "#0bd2e8", bg = "#021f38", bold = true })
hl(0, "@markup.heading.6", { fg = "#00e2f7", bg = "#001e2d", bold = true })
hl(0, "@markup.heading.2", { fg = "#3702f7", bg = "#0d0138", bold = true })

-- Text Emphasis
hl(0, "@markup.strong",        { fg = "#db3785", bold = true })
hl(0, "@markup.italic",        { fg = "#369cdb", italic = true })
hl(0, "@markup.strikethrough", { fg = "#02b4cc", strikethrough = true })
hl(0, "@markup.underline",     { fg = "#5c9ae2", underline = true })

-- Quotes and Math
hl(0, "@markup.quote", { fg = "#78a1aa", italic = true })
hl(0, "@markup.math",  { fg = "#2533d2", bold = true })

-- Code blocks
hl(0, "@markup.raw",       { fg = "#2d66da", bg = "#001847" }) -- inline code
hl(0, "@markup.raw.block", { fg = "#ace6f3", bg = "#0e1a23" }) -- fenced block

-- Links
hl(0, "@markup.link",       { fg = "#ace6f3", underline = true })
hl(0, "@markup.link.label", { fg = "#2d66da", bold = true })
hl(0, "@markup.link.url",   { fg = "#5c9ae2",  italic = true })

-- Lists
hl(0, "@markup.list",           { fg = "#db3785", bold = true })    -- bullet/marker
