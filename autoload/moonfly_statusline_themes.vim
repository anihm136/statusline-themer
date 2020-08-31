function s:GetMfStatuslineTheme(theme_name) abort
	return "moonfly_statusline_themes#themes#" . a:theme_name . "#colors()"
endfunction

function s:SetHighlightGroup(group_name, params) abort
	exe "highlight " . a:group_name . " ctermbg= " . a:params[0][0] . " guibg=" . a:params[1][0] . " ctermfg=" . a:params[0][1]  . " guifg=" . a:params[1][1]  
endfunction

function moonfly_statusline_themes#SetMfStatuslineTheme(theme_name) abort
	let l:theme_func = s:GetMfStatuslineTheme(a:theme_name)
	exe "call " . l:theme_func
	try
		let l:hl_groups = ['User1', 'User2', 'User3', 'User4', 'User5', 'User6', 'User7', 'User8']
		for hl_group in l:hl_groups
			call s:SetHighlightGroup(hl_group, g:clrs[hl_group])
		endfor
	catch
		echom "Specified theme not found, setting colors to default" 
		highlight! link User1 DiffText
		highlight! link User2 DiffAdd
		highlight! link User3 Search
		highlight! link User4 IncSearch
		highlight! link User5 StatusLine
		highlight! link User6 StatusLine
		highlight! link User7 StatusLine
	endtry
endfunction

