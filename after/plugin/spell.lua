vim.opt.spelllang = "en,es"
vim.opt.spellsuggest="best,9"

vim.opt.spell = true

-- Recompiles .add files automatically
--for d in glob('~/.config/nvim/spell/*.add', 1, 1)
    --if filereadable(d) && (!filereadable(d . '.spl') || getftime(d) > getftime(d . '.spl'))
        --exec 'silent mkspell! ' . fnameescape(d)
    --endif
--endfor

