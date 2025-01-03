require('neogen').setup({
  languages = {
    c = {
      template = {
        annotation_convention = "doxygen",
        doxygen = {
            { nil, "/** " },
            { nil, " @file $1  " },
            { nil, "" },
            { nil, " @brief $1  " },
            { nil, " @fn " },
            { nil, "" },
            { "parameters", " @param %s $1" },
            { nil, "" },
            { nil, " @return $1" },
            { nil, "*/" },
        }
      }
    }
  }
})

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate()<CR>", opts)
