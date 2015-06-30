" Declare the name of this color scheme.
let g:colors_name="taw"


set background=dark

" Reset existing syntax highlights to their default settings.
"highlight clear
if exists("syntax_on")
  syntax reset
endif


" Tell the CSApprox plugin not to override the default terminal background.
let g:CSApprox_hook_abbott_post="hi Normal ctermbg=NONE"


"hi Comment ctermfg=24
hi cCppOutIf2 ctermfg=241
hi Function ctermfg=39
hi cConditional ctermfg=126
hi cOPerator ctermfg=123
hi cObjOPerator ctermfg=181
hi cWarnOPerator ctermfg=15 ctermbg=163

hi Folded ctermfg=231 ctermbg=233
hi Pmenu ctermfg=195  ctermbg=234
hi FoldColumn ctermbg=0
hi StatusLineNc ctermfg=16
hi StatusLine ctermfg=8
hi Search ctermbg=137 ctermfg=17
"hi Visual ctermbg=7 ctermfg=0
hi Visual ctermbg=8 
hi LineNr ctermfg=8
"ctermfg=0
hi VertSplit ctermbg=8 ctermfg=0



if has("gui_running")
	let s:whit ="#FFFFFF"
	let s:black="#00000"
	" Define colors (blue).
	let s:pastel_blue="#8ccdf0"
	let s:blue="#3f91f1"

	" Define colors (brown).
	let s:tan="#fee3b4"
	let s:light_brown="#816749"
	let s:brown="#1f1912"
	let s:dark_brown="#0a0806"

	" Define colors (green).
	let s:mint_green="#d5fac8"
	let s:pastel_green="#d8ff84"
	let s:lime_green="#94d900"
	let s:green="#76bc20"

	" Define colors (orange).
	let s:burnt_orange="#f63f05"
	let s:orange="#fbb32f"

	" Define colors (purple).
	let s:lavender="#e6a2f3"

	" Define colors (red).
	let s:pink="#ec6c99"
	let s:red="#d80450"

	" Define colors (yellow).
	let s:dark_yellow="#e5e339"
	let s:yellow="#e5e339"

	" Lay down some infrastructure to make using the color variables nicer.
	function! s:H(group, style)
		execute "highlight" a:group
					\ "guifg=" . (has_key(a:style, "fg") ? a:style.fg : "NONE")
					\ "guibg=" . (has_key(a:style, "bg") ? a:style.bg : "NONE")
					\ "guisp=" . (has_key(a:style, "sp") ? a:style.sp : "NONE")
					\ "gui=" . (has_key(a:style, "opt") ? a:style.opt : "NONE")
	endfunction

else
	let s:white="15"
	let s:black="0"
	let s:gray="8"
	let s:light_gray="245"


	" Define colors (blue).
	let s:pastel_blue="31"
	let s:blue="4"

	" Define colors (brown).
	let s:tan="214"
	let s:light_brown="166"
	let s:brown="130"
	let s:dark_brown="94"

	" Define colors (green).
	let s:mint_green="46"
	let s:pastel_green="40"
	let s:lime_green="36"
	let s:green="28"

	" Define colors (orange).
	let s:burnt_orange="214"
	let s:orange="208"

	" Define colors (purple).
	let s:lavender="164"

	" Define colors (red).
	let s:pink="168"
	let s:red="9"
	let s:bright_red="160"

	" Define colors (yellow).
	let s:dark_yellow="214"
	let s:yellow="11"

	function! s:H(group, style)
		execute "highlight" a:group
					\ "ctermfg=" . (has_key(a:style, "fg") ? a:style.fg : "NONE")
					\ "ctermbg=" . (has_key(a:style, "bg") ? a:style.bg : "NONE")
	endfunction


endif

" Set default foreground and background colors.
"call s:H("Normal", { "fg": s:white, "bg": s:black})

" Set up highlights for basic syntax groups.
call s:H("Comment", { "fg": s:gray })
"call s:H("Constant", { "fg": s:pastel_blue})
"call s:H("String", { "fg": s:dark_yellow})
"call s:H("Character", { "fg": s:dark_yellow})
"call s:H("Identifier", { "fg": s:pastel_blue })
"call s:H("Statement", { "fg": s:bright_red, "opt": "bold" })
"call s:H("PreProc", { "fg": s:pink })
"call s:H("Type", { "fg": s:green })
"call s:H("Special", { "fg": s:tan })
"call s:H("Tag", { "fg": s:lavender, "opt": "underline" })
"call s:H("Underlined", { "fg": s:lavender, "opt": "underline" })
"call s:H("Ignore", { "fg": "bg" })
"call s:H("Error", { "fg": s:brown, "bg": s:red })
"call s:H("Todo", { "fg": s:brown, "bg": s:orange })
"call s:H("Function",{ "fg": s:pastel_green})
" Set up highlights for various UI elements.
"call s:H("ErrorMsg", { "fg": s:brown, "bg": s:red })
"call s:H("Folded", { "fg": s:brown, "bg": s:pastel_blue })
"call s:H("FoldColumn", { "fg": s:brown, "bg": s:pastel_blue })
"call s:H("LineNr", { "fg": s:light_gray})
"call s:H("ModeMsg", { "opt": "bold" })
"call s:H("MoreMsg", { "fg": s:blue, "opt": "bold" })
"call s:H("Pmenu", { "bg": s:dark_brown })
"call s:H("PmenuSel", { "fg": s:dark_brown, "bg": s:light_brown, "opt": "bold" })
"call s:H("PmenuSbar", { "bg": s:light_brown })
"call s:H("PmenuThumb", { "bg": s:blue })
"call s:H("Question", { "fg": s:pink, "opt": "bold" })
"call s:H("SignColumn", { "fg": s:brown, "bg": s:mint_green })
"call s:H("StatusLine", { "fg": s:brown, "bg": s:pastel_blue, "opt": "bold" })
"call s:H("StatusLineNC", { "fg": s:brown, "bg": s:mint_green })
"call s:H("TabLine", { "fg": s:brown, "bg": s:mint_green })
"call s:H("TabLineFill", { "bg": s:mint_green })
"call s:H("TabLineSel", { "fg": s:brown, "bg": s:pastel_blue, "opt": "bold" })
"call s:H("Title", { "fg": s:red, "opt": "bold" })
"call s:H("WarningMsg", { "fg": s:brown, "bg": s:pink })
"call s:H("WildMenu", { "fg": s:brown, "bg": s:mint_green })
"call s:H("VertSplit", { "fg": s:brown, "bg": s:mint_green })

" Use plain old reverse video for the blinking cursor.
"call s:H("Cursor", { "fg": "fg", "bg": "bg", "opt": "reverse" })
"call s:H("CursorIM", { "fg": "fg", "bg": "bg", "opt": "reverse" })

" Darken the background of the current line and column.
"call s:H("CursorLine", { "bg": s:dark_brown })
"call s:H("CursorColumn", { "bg": s:dark_brown })

" Darken the background of the right margin.
"call s:H("ColorColumn", { "bg": s:dark_brown })

" Highlight matched delimiters in a way that's clearly distinguishable from
" unmatched delimiter/statement/preprocessor highlighting.
"call s:H("MatchParen",  { "fg": s:dark_brown, "bg": s:light_brown, "opt": 'bold' })

" Set up highlights for imaginary `~` and `@` characters as well as special
" keys.
"call s:H("NonText", { "fg": s:pastel_blue })
"call s:H("SpecialKey", { "fg": s:pastel_blue })

" Set a vibrant background for visual mode.
"call s:H("Visual", { "fg": s:brown, "bg": s:lime_green })
"call s:H("VisualNOS", { "fg": s:brown, "bg": s:pastel_green })

" Use cold highlights for incremental searching and warm highlights for final
" search results.
"call s:H("IncSearch", { "fg": s:brown, "bg": s:pastel_blue })
"call s:H("Search", { "fg": s:brown, "bg": s:tan })

" Set up spell-checking in an unobtrusive way.
"call s:H("SpellBad", { "sp": s:red, "opt": "undercurl" })
"call s:H("SpellCap", { "sp": s:pastel_blue, "opt": "undercurl" })
"call s:H("SpellLocal", { "sp": s:yellow, "opt": "undercurl" })
"call s:H("SpellRare", { "sp": s:pink, "opt": "undercurl" })

" Don't do anything special for concealed tokens.
"call s:H("Conceal", {})

" Set highlights for directory listings.
"call s:H("Directory", { "fg": s:pastel_blue })

" Use readable diff highlights. :)
"call s:H("DiffAdd", { "fg": s:brown, "bg": s:green, "opt": "bold" })
"call s:H("DiffChange", { "fg": s:brown, "bg": s:pink })
"call s:H("DiffDelete", { "fg": s:brown, "bg": s:red })
"call s:H("DiffText", { "fg": s:brown, "bg": s:pastel_blue, "opt": "bold" })

" Set up custom highlights for bad-whitespace.vim.
"call s:H("BadWhitespace", { "fg": s:brown, "bg": s:red })

" Render TeX macros in preprocessor style. They are macros, after all. :P
highlight link texStatement PreProc

