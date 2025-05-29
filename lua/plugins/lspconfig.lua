return {
    "neovim/nvim-lspconfig",
    opts = {
	noremap = true,
	silent = true
    },
    config = function ()

    end,
    init = function ()
        vim.lsp.config("qmlls", {
            cmd = { "/usr/lib/qt6/bin/qmlls", "-E" }
        })
        vim.lsp.enable("qmlls")
    end
}
