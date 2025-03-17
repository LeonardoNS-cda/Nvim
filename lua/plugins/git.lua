local fugitive = function()
    
end

local gitsigns = function()
    require("gitsigns").setup()
    vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
    vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
end

return {
    {
        'lewis6991/gitsigns.nvim',
        config = gitsigns
    },
    {
        "tpope/vim-fugitive",
        config = fugitive
    }
}
