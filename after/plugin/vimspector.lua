-- Debug bindings
vim.keymap.set("n", "<leader>db", ":call vimspector#Launch()<CR>");
vim.keymap.set("n", "<leader>dn", "<Plug>VimspectorContinue");
vim.keymap.set("n", "<leader>dr", "<Plug>VimspectorRestart");
vim.keymap.set("n", "<leader>dx", "<Plug>VimspectorStop");

vim.keymap.set("n", "<leader>m", ":call vimspector#ReadMemory()<CR>");

vim.keymap.set("n", "<F10>", "<Plug>VimspectorStepOver");
vim.keymap.set("n", "<F11>", "<Plug>VimspectorStepInto");
vim.keymap.set("n", "<leader><F11>", "<Plug>VimspectorUpFrame");
vim.keymap.set("n", "<F12>", "<Plug>VimspectorStepOut");
vim.keymap.set("n", "<leader><F12>", "<Plug>VimspectorDownFrame");

vim.keymap.set("n", "<leader>br", "<Plug>VimspectorToggleBreakpoint");
vim.keymap.set("n", "<leader>bc", "<Plug>VimspectorToggleConditionalBreakpoint");
vim.keymap.set("n", "<leader>bf", "<Plug>VimspectorAddFunctionBreakpoint");
vim.keymap.set("n", "<leader>bg", "<Plug>VimspectorRunToCursor");
vim.keymap.set("n", "<leader>bX", ":call vimspector#ClearBreakpoints()<CR>");

vim.keymap.set("n", "<leader>da", function() vim.cmd('call vimspector#AddWatch(expand("<cexpr>"))') end);
vim.keymap.set("n", "<leader>B", "<Plug>VimspectorBreakpoints");
vim.keymap.set("n", "<leader>D", "<Plug>VimspectorDisassemble");

vim.keymap.set("n", "<leader>di", "<Plug>VimspectorBalloonEval");
vim.keymap.set("x", "<leader>di", "<Plug>VimspectorBalloonEval");


vim.g.vimspector_base_dir = vim.fn.expand("$HOME/.config/nvim/vimspector-config");



-- Run :VimspectorUpdate to update
-- Run :VimspectorInstall <tab> to install gadgets

-- ':call vimspector#Launch()' to launch
-- ':call vimspector#LaunchWithSettings( dict )' to launch with settings
-- Dumping memory: <leader>m, vimspector#ReadMemory()

--vim.cmd[[let g:vimspector_enable_mappings='HUMAN']]
    -- Human mode:
    --      F5          - <Plug>VimspectorContinue
    --      F3          - <Plug>VimspectorStop
    --      F4          - <Plug>VimspectorRestart
    --      F6          - <Plug>VimspectorPause
    --      F9          - <Plug>VimspectorToggleBreakpoint
    --      <leader>F9  - <Plug>VimspectorToggleConditionalBreakpoint
    --      F8          - <Plug>VimspectorAddFunctionBreakpoint
    --      <leader>F8  - <Plug>VimspectorRunToCursor
    --      F10         - <Plug>VimspectorStepOver
    --      F11         - <Plug>VimspectorStepInto
    --      F12         - <Plug>VimspectorStepOut
