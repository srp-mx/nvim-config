
function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	--vim.api.nvim_set_hl(0, "Comment", { bg = "none" })
	--vim.api.nvim_set_hl(0, "Constant", { bg = "none" })
	--vim.api.nvim_set_hl(0, "Special", { bg = "none" })
	--vim.api.nvim_set_hl(0, "Identifier", { bg = "none" })
	--vim.api.nvim_set_hl(0, "Statement", { bg = "none" })
	--vim.api.nvim_set_hl(0, "PreProc", { bg = "none" })
	--vim.api.nvim_set_hl(0, "Type", { bg = "none" })
	--vim.api.nvim_set_hl(0, "Underlined", { bg = "none" })
	--vim.api.nvim_set_hl(0, "Todo", { bg = "none" })
	vim.api.nvim_set_hl(0, "String", { bg = "none" })
	--vim.api.nvim_set_hl(0, "Function", { bg = "none" })
	--vim.api.nvim_set_hl(0, "Conditional", { bg = "none" })
	--vim.api.nvim_set_hl(0, "Repeat", { bg = "none" })
	--vim.api.nvim_set_hl(0, "Operator", { bg = "none" })
	--vim.api.nvim_set_hl(0, "Structure", { bg = "none" })
    --vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
    --vim.api.nvim_set_hl(0, "NonText", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    --vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })
    --vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
end

ColorMyPencils()
