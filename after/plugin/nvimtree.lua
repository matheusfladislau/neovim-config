require("nvim-web-devicons").setup()

require("nvim-tree").setup {
    hijack_cursor = true,
    view = {
        width = 40
    }
}

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', {
    noremap = true
})         
