return {
    "numToStr/Comment.nvim",
    lazy = true,
    keys = {
        { "gcc", desc = "([count]gcc) Toggles the current line or multiline given a count using linewise comment" },
        { "gbc", desc = "([count]gbc) Toggles the current line or multiline given a counbt using blockwise comment" },
        { "gc", desc = "(gc[count]{motion}) (Op-pending) Toggles the region using linewise comment" },
        { "gb", desc = "(gb[count]{motion}) (Op-pending) Toggles the region using blockwise comment" },
        { "gc", mode = "v", desc = "Toggles the region using linewise comment" },
        { "gb", mode = "v", desc = "Toggles the region using blockwise comment" },
        { "gco", desc = "Insert comment to the next line and enters INSERT mode" },
        { "gc0", desc = "Insert comment to the previous line and enters INSERT mode" },
        { "gcA", desc = "Insert comment to end of the current line and enters INSERT mode" }
    }
}
