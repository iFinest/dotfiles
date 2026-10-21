return {
    {
        dir = vim.fn.stdpath("config") .. "/colors/finest",
        name = "finestnight",
        lazy = false,
        priority = 1000,
        opts = {
            style = "finest",
            plugins = { all = true },
        },
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "finestnight",
        },
    },
}
