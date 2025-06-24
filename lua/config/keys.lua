-- Tabs
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>")
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>")
vim.keymap.set("n", "<leader>j", function()
    if vim.fn.tabpagenr() == 1 then
        vim.cmd("tablast")
    else
        vim.cmd("tabprevious")
    end
end)

vim.keymap.set("n", "<leader>k", function()
    if vim.fn.tabpagenr() == vim.fn.tabpagenr("$") then
        vim.cmd("tabfirst")
    else
        vim.cmd("tabnext")
    end
end)

-- Buffers
vim.keymap.set("n", "<leader><Left>", ":bprevious<CR>")    -- previous buffer
vim.keymap.set("n", "<leader><Right>", ":bnext<CR>")        -- next buffer
