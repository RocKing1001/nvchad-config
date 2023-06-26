local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
      }
    }
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end
  },
  {
    "Pocco81/auto-save.nvim",
    ft = "rust",
  },
  {
    "ThePrimeagen/harpoon",
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    after = "nvim-lspconfig",
    config = function ()
      require("custom.configs.null-ls")
    end
  },
  {
    "mbbill/undotree",
    lazy = false,
  },
  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function ()
      require('leap').add_default_mappings()
    end
  },
  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  {
    "jackMort/ChatGPT.nvim",
      event = "VeryLazy",
      dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim"
      },
      config = function()
        require("chatgpt").setup({
          api_key_cmd = "",
          predefined_chat_gpt_prompts = "https://raw.githubusercontent.com/RocKing1001/awesome-chatgpt-prompts/main/prompts.csv"
        })
      end,
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function ()
      local utils = require "core.utils"
      require("gitsigns").setup({
        signs = {
          add = { text = "│" },
          change = { text = "│" },
          delete = { text = "󰍵" },
          topdelete = { text = "‾" },
          changedelete = { text = "~" },
          untracked = { text = "│" },
        },
        signcolumn = false,
        on_attach = function(bufnr)
          utils.load_mappings("gitsigns", { buffer = bufnr })
        end,
      })
    end
  },
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    ft = { "dart" },
    config = true,
  }
}

return plugins
