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

        vim.keymap.set("n", "<leader>mb", function()
            local count = vim.v.count
            if count > 0 then
                vim.cmd("ScopeMoveBuf " .. count)
            else
                vim.cmd("ScopeMoveBuf ")
            end
        end, { expr = false })

    end
}
