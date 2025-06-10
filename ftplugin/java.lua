local config = {
    cmd = {'/usr/bin/jdtls'},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew','build.xml','.git','mvnw'}, {upward=true})[1]),
}
require('jdtls').start_or_attach(config)
