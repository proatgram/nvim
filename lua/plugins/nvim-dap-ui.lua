return {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "jay-babu/mason-nvim-dap.nvim", -- So that we can lazy load mason-nvim-dap
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio"
    },
    lazy = true,
    cmd = {
        "DapuiOpen",
        "DapuiClose",
        "DapuiToggle"
    },
    init = function()
        -- Creates custom commands to run the Lua functions so that we can Lazy Load
        vim.api.nvim_create_user_command("DapuiOpen", function() require('dapui').open() end, {})
        vim.api.nvim_create_user_command("DapuiClose", function() require('dapui').close() end, {})
        vim.api.nvim_create_user_command("DapuiToggle", function() require('dapui').toggle() end, {})
    end,
    config = function()
        require("dapui").setup()
    end
}
