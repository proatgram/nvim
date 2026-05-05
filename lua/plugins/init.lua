return  {
    { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000 },
    { "folke/tokyonight.nvim", lazy = false, priority = 1000 },
    { "navarasu/onedark.nvim",
        lazy = false,
        priority = 1000,
        config = function ()
            require('onedark').setup {
                style = 'deep'
            }
        end
    }
}
