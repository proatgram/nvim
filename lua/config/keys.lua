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
vim.keymap.set("n", "<leader><Backspace>", ":bp|bd #<CR>") -- Moves to previous buffer, deletes previous


vim.keymap.set("n", "p", "P") -- Delete without yanking (default behavior with P, but muscle memory forbinds 😔)

vim.api.nvim_create_user_command("Q", "qa", {})

vim.keymap.set("n", "<leader>qq", ":Q<CR>")
