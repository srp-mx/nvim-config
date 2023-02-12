vim.opt.spelllang = "en,es"
vim.opt.spellsuggest="best,9"

vim.opt.spell = true

-- Recompiles .add files automatically
--for d in glob('~/.config/nvim/spell/*.add', 1, 1)
    --if filereadable(d) && (!filereadable(d . '.spl') || getftime(d) > getftime(d . '.spl'))
        --exec 'silent mkspell! ' . fnameescape(d)
    --endif
--endfor

vim.api.nvim_command("silent mkspell! /home/srp/.config/nvim/spell/es.utf-8.add")
vim.api.nvim_command("silent mkspell! /home/srp/.config/nvim/spell/en.utf-8.add")
