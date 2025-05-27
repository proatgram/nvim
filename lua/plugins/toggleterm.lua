return {
    "akinsho/toggleterm.nvim",
    lazy = true,
    keys = {
        { "<c-\\>", desc = "ToggleTerm" }
    },
    opts = {
        open_mapping = [[<c-\>]],
        direction = "float",
        float_opts = {
            border = "curved",
            title_pos = "center"
        }
    }
}
