local config = function()
    vim.cmd.colorscheme("tokyonight-moon")
end
return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = config
    },
    {"Mofiqul/dracula.nvim"},
    {"folke/tokyonight.nvim"},
    {"rebelot/kanagawa.nvim"},
}
