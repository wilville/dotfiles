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
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    keys = {
      -- 👇 in this section, choose your own keymappings!
      {
        "<leader>-",
        "<cmd>Yazi<cr>",
        desc = "Open yazi at the current file",
      },
      {
        -- Open in the current working directory
        "<leader>cw",
        "<cmd>Yazi cwd<cr>",
        desc = "Open the file manager in nvim's working directory" ,
      },
      {
        -- NOTE: this requires a version of yazi that includes
        -- https://github.com/sxyazi/yazi/pull/1305 from 2024-07-18
        '<c-up>',
        "<cmd>Yazi toggle<cr>",
        desc = "Resume the last yazi session",
      },
    },
    opts = {
      -- if you want to open yazi instead of netrw, see below for more info
      open_for_directories = false,
      keymaps = {
        show_help = '<f1>',
      },
    },
  },
  {
    "lervag/vimtex",
    lazy = false,
    config = function()
      vim.g.vimtex_view_general_viewer = "zathura"
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_syntax_enabled = 0
      vim.g.vimtex_syntax_conceal_disable = 1
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
      require'luasnip-latex-snippets'.setup({
        use_treesitter = true,
        allow_on_markdown = true,
      })
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
  },
}
