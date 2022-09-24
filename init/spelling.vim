set spelllang=en,cjk,es
set spellsuggest=best,9

set spell

" Recompiles .add files automatically
for d in glob('~/.config/nvim/spell/*.add', 1, 1)
    if filereadable(d) && (!filereadable(d . '.spl') || getftime(d) > getftime(d . '.spl'))
        exec 'silent mkspell! ' . fnameescape(d)
    endif
endfor

" ]s move to next misspelled word
" [s move to previous misspelled word
" z= suggestions/autocorrect
" zg add a word to the dictionary
