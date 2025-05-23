return {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = {
        "mfussenegger/nvim-dap",
        "williamboman/mason.nvim",
    },
    opts = {
        ensure_installed = {

        },
        handlers = {
            function(config)
                require("mason-nvim-dap").default_setup(config)
            end
        }
    },
    lazy = true,
    cmd = {
        "DapInstall",
        "DapUninstall"
    }
}
