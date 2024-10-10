return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "renerocksai/telekasten.nvim",
    dependencies = {'nvim-telescope/telescope.nvim'},
  },
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.tex_flavor = 'latex'
      vim.g.vimtex_view_general_viewer = 'zathura'
      vim.g.vimtex_compiler_method = 'latexmk'
      vim.g.vimtex_quickfix_mode = 0
    end
  },
  {
    "jbyuki/ntangle.nvim"
  },
  {
    "jbyuki/nabla.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    dependencies = { "nvim-telescope/telescope-media-files.nvim" },
      opts = {
        extensions_list = { "themes", "terms", "media_files" },
          extensions = {
            media_files = {
              filetypes = {"png", "webp", "jpg", "jpeg"},
              find_cmd = "rg" -- find command (defaults to `fd`)
        },
      },
    },
  },
--  {
--    "SirVer/ultisnips",
--    event = { 'InsertEnter'},
--    dependencies = { 'honza/vim-snippets' },
--      init = function()
--      vim.g.UltiSnipsExpandTrigger = '<Plug>(ultisnips_expand)'
--      vim.g.UltiSnipsJumpForwardTrigger = '<Plug>(ultisnips_jump_forward)'
--      vim.g.UltiSnipsJumpBackwardTrigger = '<Plug>(ultisnips_jump_backward)'
--      vim.g.UltiSnipsListSnippets = '<c-x><c-s>'
--      vim.g.UltiSnipsRemoveSelectModeMappings = 0
--      vim.g.UltiSnipsSnippetsDir = "/home/void/ultisnips"
--    end,
--  },
  --

  {
    "iurimateus/luasnip-latex-snippets.nvim",
    lazy = false,
    -- vimtex isn't required if using treesitter
    dependencies = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
    config = function()
      require'luasnip-latex-snippets'.setup()
      require("luasnip").config.setup { enable_autosnippets = true }
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    "Lyon52222/Inkscape.vim",
    lazy = false,
  },
  {
    "vimwiki/vimwiki",
    lazy = false,
  },
  {
    "mattn/calendar-vim",
    lazy = false,
  }
}
