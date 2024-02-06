local term_buff = nil
local term_window_id = nil

function OpenTerminalH()
    if vim.fn.bufexists(term_buff) ~= 1 then
        vim.api.nvim_command("split | wincmd J | resize 6 | terminal")
        term_window_id = vim.fn.win_getid()
        term_buff = vim.fn.bufnr('%')
        vim.api.nvim_win_set_height(0, 6)
    elseif vim.fn.win_gotoid(term_window_id) ~= 1 then
        vim.api.nvim_command("sbuffer " .. term_buff .. "| wincmd J")
        term_window_id = vim.fn.win_getid()
        vim.api.nvim_win_set_height(0, 6)
    end
end

function OpenTerminalV()
    if vim.fn.bufexists(term_buff) ~= 1 then
        vim.api.nvim_command("vsplit | wincmd L | resize 60 | terminal")
        term_window_id = vim.fn.win_getid()
        term_buff = vim.fn.bufnr('%')
        vim.api.nvim_win_set_width(0, 60)
    elseif vim.fn.win_gotoid(term_window_id) ~= 1 then
        vim.api.nvim_command("vert sbuffer " .. term_buff .. "| wincmd L")
        term_window_id = vim.fn.win_getid()
        vim.api.nvim_win_set_width(0, 60)
    end
end
