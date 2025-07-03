return {
    "nvim-tree/nvim-tree.lua",
    lazy = true,
    keys = {
        {"<leader>w", "<cmd>NvimTreeToggle<cr>", desc = "Toggle Nvim Tree"}
    },
    cmd = {
        "NvimTreeOpen",
        "NvimTreeClose",
        "NvimTreeToggle",
        "NvimTreeFocus",
        "NvimTreeRefresh",
        "NvimTreeFindFile",
        "NvimTreeFindFileToggle",
        "NvimTreeClipboard",
        "NvimTreeResize",
        "NvimTreeCollapse",
        "NvimTreeCollapseKeepBuffers",
        "NvimTreeHiTest"
    },
    opts = {
        sort = {
            sorter = "case_sensitive",
        },
        view = {
            width = 30,
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = false,
        },
    }
}
