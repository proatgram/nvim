-- put this in your init.lua
vim.api.nvim_create_autocmd(
    {"BufEnter", "BufWinEnter"},
    {
        pattern = {"*.yuck"},
        callback = function(event)
            print(string.format("starting yuck;s for %s", vim.inspect(event)))
            vim.lsp.start {
                name = "YuckLs",
                    cmd = {"yuckls"}, -- if installed from aur
                root_dir = vim.fn.getcwd()
            }
        end
    }
)
