
function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

    local amarillo = "#e1ff00"
    local rosaclaro = "#e9d4ed"
    local grisaseo = "#bd9fce"
    local verdeazul = "#9effd5"
    local verde = "#05ff92"
    local rojoclaro = "#ffcccc"
    local ciandespintado = "#85e7ff"
    local naranjita = "#ffd094"
    local naranjaclaro = "#f6d3b1"
    local lima = "#80fc03"
    local doradoclaro = "#f2d882"
    local casiblanco = "#fffafc"
    local azultenue = "#b0e5f7"
    local azulverdoso = "#79ece9"
    local platanito = "#ece279"
    local rojo = "#ff2222"

    local puntuacion = naranjaclaro
    local comentario = grisaseo
    local variablelocal = naranjita
    local propiedad = lima
    local tipo = verde
    local interfaz = verde
    local operador = rosaclaro
    local palabrareservada = rojoclaro
    local funcion = platanito
    local literalliteral = amarillo
    local parametro = azulverdoso
    local latexmate = rojoclaro
    local diagErrorBg = rojoclaro

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	vim.api.nvim_set_hl(0, "Comment", { bg = "none", fg = comentario })
	--vim.api.nvim_set_hl(0, "Special", { bg = "none" })
    vim.api.nvim_set_hl(0, "Identifier", { bg = "none", fg = variablelocal })
    vim.api.nvim_set_hl(0, "Variable", { bg = "none", fg = variablelocal })
    vim.api.nvim_set_hl(0, "@variable", { bg = "none", fg = variablelocal })
    vim.api.nvim_set_hl(0, "@field", { bg = "none", fg = propiedad })
    vim.api.nvim_set_hl(0, "@lsp.type.property", { bg = "none", fg = propiedad })
    vim.api.nvim_set_hl(0, "Parameter", { bg = "none", fg = parametro })
    vim.api.nvim_set_hl(0, "@parameter", { bg = "none", fg = parametro })
	--vim.api.nvim_set_hl(0, "Statement", { bg = "none" })
	--vim.api.nvim_set_hl(0, "PreProc", { bg = "none" })
	--vim.api.nvim_set_hl(0, "Underlined", { bg = "none" })
	--vim.api.nvim_set_hl(0, "Todo", { bg = "none" })
    vim.api.nvim_set_hl(0, "String", { bg = "none", fg = literalliteral })
    vim.api.nvim_set_hl(0, "@text.math", { bg = "none", fg = latexmate })
    vim.api.nvim_set_hl(0, "Literal", { bg = "none", fg = literalliteral })
    vim.api.nvim_set_hl(0, "Number", { bg = "none", fg = literalliteral })
    vim.api.nvim_set_hl(0, "Constant", { bg = "none", fg = literalliteral })
    vim.api.nvim_set_hl(0, "Function", { bg = "none", fg = funcion, italic=true })
    vim.api.nvim_set_hl(0, "Conditional", { bg = "none", fg = palabrareservada })
    vim.api.nvim_set_hl(0, "Keyword", { bg = "none", fg = palabrareservada })
    vim.api.nvim_set_hl(0, "@string.escape", { bg = "none", fg = palabrareservada })
    vim.api.nvim_set_hl(0, "Exception", { bg = "none", fg = palabrareservada })
    vim.api.nvim_set_hl(0, "@type.qualifier", { bg = "none", fg = palabrareservada })
    vim.api.nvim_set_hl(0, "Include", { bg = "none", fg = palabrareservada })
    vim.api.nvim_set_hl(0, "Type", { bg = "none", fg = tipo })
    vim.api.nvim_set_hl(0, "Interface", { bg = "none", fg = interfaz, italic=true })
    vim.api.nvim_set_hl(0, "@interface", { bg = "none", fg = interfaz, italic=true })
    vim.api.nvim_set_hl(0, "@lsp.type.class", { bg = "none", fg = tipo })
    vim.api.nvim_set_hl(0, "@class", { bg = "none", fg = tipo })
    vim.api.nvim_set_hl(0, "@lsp.type.struct", { bg = "none", fg = tipo })
    vim.api.nvim_set_hl(0, "@punctuation.bracket", { bg = "none", fg = puntuacion })
    vim.api.nvim_set_hl(0, "@punctuation.special", { bg = "none", fg = puntuacion })
    vim.api.nvim_set_hl(0, "@punctuation", { bg = "none", fg = puntuacion })
    vim.api.nvim_set_hl(0, "Punctuation", { bg = "none", fg = puntuacion })
    vim.api.nvim_set_hl(0, "@punctuation.delimiter", { bg = "none", fg = puntuacion })
    vim.api.nvim_set_hl(0, "Repeat", { bg = "none", fg = palabrareservada })
    vim.api.nvim_set_hl(0, "Operator", { bg = "none", fg = operador })
    vim.api.nvim_set_hl(0, "@variable.builtin", { bg = "none", fg = operador })
    vim.api.nvim_set_hl(0, "@keyword.operator", { bg = "none", fg = operador })
	--vim.api.nvim_set_hl(0, "Structure", { bg = "none" })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "none", fg = "#d4aec1" })
    --vim.api.nvim_set_hl(0, "NonText", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none", fg="white", bold=true })
    --vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "#252261" })
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#252261" })
    vim.api.nvim_set_hl(0, "DiagnosticFloatingError", { fg=diagErrorBg })
    vim.api.nvim_set_hl(0, "DiagnosticStatusLineError", { fg=diagErrorBg })
    vim.api.nvim_set_hl(0, "DiagnosticStatusLineError", { fg=diagErrorBg })
    vim.api.nvim_set_hl(0, "DiagnosticDefaultError", { fg=diagErrorBg })
    vim.api.nvim_set_hl(0, "DiagnosticError", { fg=diagErrorBg })
    vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg=diagErrorBg })
    vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg=diagErrorBg })
    vim.api.nvim_set_hl(0, "NotifyERRORIcon", { fg=diagErrorBg })
end

ColorMyPencils()
