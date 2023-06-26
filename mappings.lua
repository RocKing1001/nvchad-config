local M = {}

M.disabled = {
  n = {
    ["<C-s>"] = "",
    ["<leader>h"] = "",
    ["<leader>n"] = "",
    ["<leader>rn"] = "",
  }
}

M.telescope = {
  n = {
    ["<leader>pf"] = { "<cmd> Telescope find_files <CR>", "Find files" },
    ["<leader>ps"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
  }
}

M.nvimtree = {
  -- n = {
  --    ["<leader>n"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  -- }
}

M.general = {
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "Move text down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move text up" },
-- Move blocks of text
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
  }
}

M.harpoon = {
  n = {
    ["<leader>l"] = {
      function ()
        require("harpoon.mark").add_file()
      end,
      "Mark file"
    },
    ["<C-e>"] = {
      function ()
        require('harpoon.ui').toggle_quick_menu()
      end,
      "Toggle UI"
    },
    ["<C-h>"] = {
      function ()
        require('harpoon.ui').nav_file(1)
      end,
      "Go to file 1"
    },
    ["<C-t>"] = {
      function ()
        require('harpoon.ui').nav_file(2)
      end,
      "Go to file 2"
    },
  }
}

M.tabufline = {
  n = {
    ["H"] = { "<cmd> bprevious <CR>", "Previous buffer" },
    ["L"] = { "<cmd> bnext <CR>", "Next buffer" },
  }
}

M.undotree = {
  n = {
    ["<leader>u"] = { "<cmd> UndotreeToggle <CR>", "Toggle undotree" },
  }
}

M.lspconfig = {
  n = {
    ["="] = { "<cmd> RustFmt <CR>", "Format (RustFmt)" },
  }
}

M.fugitive = {
  n = {
    ["<leader>gs"] = { "<cmd> 0Git <CR>", "Open fugutive" }
  }

 -- vim.api.nvim_set_keymap('n', '<leader>gs', ':0Git<CR>', { noremap = true })
}

return M
