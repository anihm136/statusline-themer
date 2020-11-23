function moonfly_statusline_themes#themes#gruvbox#colors() abort
	if &background == "dark"
		"									[ctermbg, ctermfg], [guibg, guifg]
		let g:clrs = {
					\ "User1" : [[237, 254], ["#928374", "#282828"]],
					\ "User2" : [[237, 254], ["#83a598", "#282828"]],
					\ "User3" : [[237, 254], ["#d65d0e", "#282828"]],
					\ "User4" : [[237, 254], ["#8ec07c", "#282828"]],
					\ "User5" : [[235, 254], ["#282828", "#928374"]],
					\ "User6" : [[235, 254], ["#282828", "#8ec07c"]],
					\ "User7" : [[235, 254], ["#282828", "#928374"]],
					\ "User8" : [[235, 254], ["#282828", "#8ec07c"]],
					\	}
	else
		"									[ctermbg, ctermfg], [guibg, guifg]
		let g:clrs = {
					\ "User1" : [[237, 254], ["#504945", "#fbf1c7"]],
					\ "User2" : [[237, 254], ["#076678", "#fbf1c7"]],
					\ "User3" : [[237, 254], ["#af3a03", "#fbf1c7"]],
					\ "User4" : [[237, 254], ["#427b58", "#fbf1c7"]],
					\ "User5" : [[235, 254], ["#d5c4a1", "#504945"]],
					\ "User6" : [[235, 254], ["#d5c4a1", "#427b58"]],
					\ "User7" : [[235, 254], ["#d5c4a1", "#504945"]],
					\ "User8" : [[235, 254], ["#d5c4a1", "#427b58"]],
					\	}
	endif
endfunction
