return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
	    defaults = {
            file_ignore_patterns = {
                "build/.*"
            },
            -- Default configuration for telescope goes here:
            -- config_key = value,
            mappings = {
                i = {
                  -- map actions.which_key to <C-h> (default: <C-/>)
                  -- actions.which_key shows the mappings for your picker,
                  -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                  ["<C-h>"] = "which_key"
                }
            }
        },
        pickers = {
            -- Default configuration for builtin pickers goes here:
    	    -- picker_name = {
            --   picker_config_key = value,
    	    --   ...
    	    -- }
    	    -- Now the picker_config_key will be applied every time you call this
    	    -- builtin picker

            colorscheme = {
                enable_preview = true,
                ignore_builtins = true
            }
        },
        extensions = {
            -- Your extension configuration goes here:
            -- extension_name = {
            --   extension_config_key = value,
            -- }
            -- please take a look at the readme of the extension you want to configure
            possession = {

            }
        }
    },
    init = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        vim.keymap.set('n', '<leader>fc', builtin.colorscheme, { desc = 'Telescope colorscheme' })
    end
}
