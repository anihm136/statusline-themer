augroup mfcolorchange
	autocmd!
	autocmd VimEnter,ColorScheme * exe 'MfStatuslineTheme ' . trim(execute('colorscheme'))
augroup END
