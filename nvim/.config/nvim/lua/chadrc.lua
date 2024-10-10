local M = {}

M.plugins = "custom.plugins"

M.ui = {
  theme = "everforest",

transparency = false,
  nvdash = {
    load_on_startup = true,
  },
}
	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
M.mappings = require "custom.mappings"

return M
