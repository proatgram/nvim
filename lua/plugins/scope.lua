return {
    "tiagovla/scope.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
    },
    lazy = false,
    config = function ()
        vim.opt.sessionoptions = "buffers,tabpages,globals"

        require("telescope").load_extension("scope")

        require("scope").setup({})
    end
}
