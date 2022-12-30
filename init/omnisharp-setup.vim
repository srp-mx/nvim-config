let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_net6 = 1
let g:OmniSharp_server_use_net6 = 0
let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_highlighting = 3
let g:OmniSharp_diagnostic_showid = 1
let g:OmniSharp_lookup_metadata = 1
let g:OmniSharp_open_quickfix = 1
let g:omnicomplete_fetch_full_documentation = 0

let g:OmniSharp_server_path = '/usr/lib/omnisharp-roslyn/OmniSharp'

" Interesting bindings below
autocmd FileType cs nmap <buffer> <silent> gd <Plug>(omnisharp_go_to_definition)
autocmd FileType cs nmap <buffer> <silent> gi <Plug>(omnisharp_find_implementations)
"autocmd FileType cs nmap <buffer> <leader>gr <Plug>(omnisharp_find_symbol)
"autocmd FileType cs nmap <buffer> <leader>gr <Plug>(omnisharp_find_type)
autocmd FileType cs nmap <buffer> <silent> gr <Plug>(omnisharp_find_usages)
"autocmd FileType cs nmap <buffer> <leader>gr <Plug>(omnisharp_find_members)
autocmd FileType cs nmap <buffer> <silent> gy <Plug>(omnisharp_type_lookup)
"autocmd FileType cs nmap <buffer> <leader>gr <Plug>(omnisharp_documentation)
"autocmd FileType cs nmap <buffer> <leader>gr <Plug>(omnisharp_signature_help)
"autocmd FileType cs nmap <buffer> <leader>gr <Plug>(omnisharp_open_log)
"autocmd FileType cs nmap <buffer> <leader>gr <Plug>(omnisharp_code_actions)
autocmd FileType cs nmap <buffer> <leader>ge <Plug>(omnisharp_global_code_check)
autocmd FileType cs nmap <buffer> <leader>rr <Plug>(omnisharp_rename)
autocmd FileType cs nmap <buffer> <leader>f <Plug>(omnisharp_code_format)
autocmd FileType cs xmap <buffer> <leader>f <Plug>(omnisharp_code_format)
"autocmd FileType cs nmap <buffer> <leader>rr <Plug>(omnisharp_restart_all_servers)
"autocmd FileType cs nmap <buffer> <leader>rr <Plug>(omnisharp_restart_server)
"autocmd FileType cs nmap <buffer> <leader>rr <Plug>(omnisharp_stop_server)
