local M = {}
M.colemak = {
  n = {
   ["m"] = { "h", "Cursor left"},
   ["n"] = { "j", "Cursor down" },
   ["e"] = { "k", "Cursor up" },
   ["i"] = { "l", "Cursor right" },
   ["u"] = { "i", "Insert mode" },
   ["U"] = { "I", "Insert at bol" },
   ["l"] = { "u", "Undo" },
   ["L"] = { "U", "Undo line"},
   ["k"] = { "n", "Next (find)"},
   ["K"] = { "N", "Prev (find)"},
   ["<S-z>"] = { "<cmd>:NvimTreeToggle<CR>", "Toggle vim-tree"},
   [";"] = { ":", "Enter command mode", opts = { nowait = true} },
   ["<S-h>"] = { "<cmd>:bprev<CR>", "Prev tab"},
   ["<S-i>"] = { "<cmd>:bnext<CR>", "Next tab"},
  },
}
M.nvimtree = {
  n = {
    ["e"] = { "k", "Cursor up"},
  },
}
return M
