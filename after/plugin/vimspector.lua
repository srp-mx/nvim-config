-- Debug bindings
vim.keymap.set("n", "<leader>di", "<Plug>VimspectorBalloonEval");
vim.keymap.set("x", "<leader>di", "<Plug>VimspectorBalloonEval");
vim.cmd[[let g:vimspector_enable_mappings='HUMAN']]
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
vim.keymap.set("n", "<leader><F11>", "<Plug>VimspectorUpFrame");
vim.keymap.set("n", "<leader><F12>", "<Plug>VimspectorDownFrame");
vim.keymap.set("n", "<leader>B", "<Plug>VimspectorBreakpoints");
vim.keymap.set("n", "<leader>D", "<Plug>VimspectorDisassemble");

-- Run :VimspectorUpdate to update

-- ':call vimspector#Launch()' to launch
-- ':call vimspector#LaunchWithSettings( dict )' to launch with settings
-- Dumping memory: <leader>m, vimspector#ReadMemory()

