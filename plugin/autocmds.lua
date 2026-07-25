local group = vim.api.nvim_create_augroup("CalAutocmds", { clear = true })
local cmd = require("cal.mapping").cmd

vim.api.nvim_create_autocmd("BufEnter", {
    group = group,
    callback = function(_)
        if vim.bo.filetype == "" then
            vim.keymap.set("n", "q", cmd("bd"), { buffer = 0, silent = true })
        end
    end,
})

vim.api.nvim_create_autocmd("LspAttach", {
    group = group,
    callback = function(args)
        if vim.api.nvim_buf_get_name(args.buf) == "" then
            vim.bo[args.buf].buftype = "nofile"
        end
    end,
})

vim.api.nvim_create_autocmd("BufWinEnter", {
    group = group,
    callback = function()
        if vim.bo.filetype:match("^dap") then
            vim.wo.cursorline = false
        end
    end,
})
