return {
    "nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',

    lazy = false,
    config = function()
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'cpp', 'c', 'cppm', 'h', 'hpp' },
            callback = function() vim.treesitter.start() end,
        })
    end,
}
