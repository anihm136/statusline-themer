function s:GetStatuslineTheme(theme_name) abort
	return "statusline_themer#themes#" . a:theme_name . "#colors()"
endfunction

function s:SetHighlightGroup(group_name, params) abort
	exe "highlight " . a:group_name . " ctermbg= " . a:params[0][0] . " guibg=" . a:params[1][0] . " ctermfg=" . a:params[0][1]  . " guifg=" . a:params[1][1]  
endfunction

function statusline_themer#SetStatuslineTheme(theme_name) abort
	let l:theme_func = s:GetStatuslineTheme(a:theme_name)
	try
		exe "call " . substitute(l:theme_func, "-", "_", "")
		let l:hl_groups = ['User1', 'User2', 'User3', 'User4', 'User5', 'User6', 'User7', 'User8']
		for hl_group in l:hl_groups
			call s:SetHighlightGroup(hl_group, g:clrs[hl_group])
		endfor
	catch
		highlight! link User1 DiffText
		highlight! link User2 DiffAdd
		highlight! link User3 Search
		highlight! link User4 IncSearch
		highlight! link User5 StatusLine
		highlight! link User6 StatusLine
		highlight! link User7 StatusLine
	endtry
	highlight link ElCommand User1
	highlight link ElCommandCV Statusline
	highlight link ElCommandEx Statusline
	highlight link ElConfirm Statusline
	highlight link ElInsertCompletion User2
	highlight link ElInsert User2
	highlight link ElMore Statusline
	highlight link ElNormal User1
	highlight link ElNormalOperatorPending Statusline
	highlight link ElPrompt Statusline
	highlight link ElReplace User4
	highlight link ElSBlock User3
	highlight link ElSelect User3
	highlight link ElShell Statusline
	highlight link ElSLine User3
	highlight link ElTerm Statusline
	highlight link ElVirtualReplace User4
	highlight link ElVisualBlock User3
	highlight link ElVisualLine User3
	highlight link ElVisual User3
endfunction

