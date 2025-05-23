return {
    "anurag3301/nvim-platformio.lua",
    lazy = true,
    cmd = {
        "Pioinit",
        "Piorun",
        "Piocmd",
        "Piolib",
        "Piomon",
        "Piodebug",
        "Piodb",
    },
    dependencies = {
        { "akinsho/nvim-toggleterm.lua" },
        { "nvim-telescope/telescope.nvim" },
        { "nvim-lua/plenary.nvim" },
    },
    opts = {
        lsp = "clangd"
    }
}
