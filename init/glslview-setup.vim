lua << EOF
require('glslView').setup {
    exe_path = '/usr/bin/glslViewer',
    arguments = { '-l', '-w', '128', '-h', '256' },
}
EOF
