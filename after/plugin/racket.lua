function MyDrRacket()
    local title = vim.fn.expand("%")
    OpenTerminalV()
    vim.api.nvim_command("startinsert")
    -- char 21 will clear any input previously on the terminal
    vim.api.nvim_chan_send(vim.bo.channel, string.char(21) .. "racket -i -e '(enter! \"" .. title .. "\")'\r")
end

-- Special tabbing
vim.api.nvim_create_autocmd("FileType", {
    pattern = "racket",
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.softtabstop = 2
        vim.opt_local.shiftwidth = 2
    end
})
