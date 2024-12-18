require('neogen').setup({
  languages = {
    c = {
      template = {
        annotation_convention = "doxygen",
        doxygen = {
            { nil, "/** " },
            { nil, " @brief $1  " },
            { nil, " @fn " },
            { nil, "" },
            { "parameters", " @param %s $1" },
            { nil, "" },
            { nil, " @return $1" },
            { nil, " */" },
        }
      }
    }
  }
})

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate()<CR>", opts)
vim.api.nvim_set_keymap("i", "<C-l>", ":lua require('neogen').jump_next<CR>", opts)
vim.api.nvim_set_keymap("i", "<C-h>", ":lua require('neogen').jump_prev<CR>", opts)
