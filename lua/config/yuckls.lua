-- put this in your init.lua
vim.api.nvim_create_autocmd(
    {"BufEnter", "BufWinEnter"},
    {
        pattern = {"*.yuck"},
        callback = function(event)
            print(string.format("starting yuck;s for %s", vim.inspect(event)))
            vim.lsp.start {
                name = "YuckLs",
                cmd = {"dotnet", "/home/gitrepos/yuckls/YuckLS/dist/YuckLS.dll"}, --this must be where you cloned this repo to.
                --cmd = {"yuckls"} -- if installed from aur
                root_dir = vim.fn.getcwd()
            }
        end
    }
)
