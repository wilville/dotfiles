vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- vim.g.vimwiki_list = {{
--   path = '~/wiki',
--   syntax = 'markdown',
--   ext = 'md',
--   diary_rel_path = 'Notes'
-- }}
-- vim.g.vimwiki_listsyms = '✗○◐●✓'
-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)
vim.cmd("set autochdir")
local lazy_config = require "configs.lazy"
vim.cmd("setlocal spell spelllang=en_us")
vim.cmd("set conceallevel=2")
-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
    config = function()
      require "options"
    end,
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

vim.o.autowriteall = true

vim.api.nvim_create_autocmd({ "FIleType" }, { pattern = "tex" , group = optional_group, command = "TSBufDisable highlight" })

require('telekasten').setup({
  home = vim.fn.expand("~/zettelkasten"), -- Put the name of your notes directory here
})
