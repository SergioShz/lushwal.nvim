-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local hsl = lush.hsl
local xdg = require("lushwal.utils.xdg")

-- Decode some JSON:
local json_decode = function(data)
	return pcall(vim.fn.json_decode, data)
end

-- Locate pywal cache:
local wal_path = xdg("XDG_CACHE_HOME") .. "/wal/colors.json"
local ok, colors = json_decode(vim.fn.readfile(wal_path))

-- Generate Color Variables:
local foreground = hsl(colors.special.foreground)
local background = hsl(colors.special.background)
local cursor = hsl(colors.special.cursor)
local color0 = hsl(colors.colors.color1)
local color1 = hsl(colors.colors.color1)
local color2 = hsl(colors.colors.color2)
local color3 = hsl(colors.colors.color3)
local color4 = hsl(colors.colors.color4)
local color5 = hsl(colors.colors.color5)
local color6 = hsl(colors.colors.color6)
local color7 = hsl(colors.colors.color7)
local color8 = hsl(colors.colors.color8)
local color9 = hsl(colors.colors.color9)
local color10 = hsl(colors.colors.color10)
local color11 = hsl(colors.colors.color11)
local color12 = hsl(colors.colors.color12)
local color13 = hsl(colors.colors.color13)
local color14 = hsl(colors.colors.color14)
local color15 = hsl(colors.colors.color15)
local grey = color8.mix(color7, 30) -- Darker mid-grey
local br_grey = color8.mix(color7, 65) -- Mid-grey
local purple = color4.rotate(65).li(45) -- Purple
local brown = color1.mix(color5, 15) -- Brown

return lush(function()
	if not ok then
		return {}
	end
	return {
		Normal({ fg = foreground, bg = background }),
		Bold({ Normal, gui = "bold" }),
		Italic({ Normal, gui = "italic" }),

		Debug({ fg = color5 }),
		Directory({ fg = color4 }),
		ErrorMsg({ fg = color5, bg = background }),
		Exception({ fg = color5 }),
		FoldColumn({ fg = color4, bg = background }),
		Folded({ fg = color7, bg = color8, gui = "italic" }),
		IncSearch({ fg = color8, bg = color1 }),

		Macro({ fg = color5 }),
		MatchParen({ fg = foreground, bg = br_grey }),
		ModeMsg({ fg = color2 }),
		MoreMsg({ fg = color2 }),
		Question({ fg = color4 }),
		Search({ fg = br_grey, bg = color3 }),
		SpecialKey({ fg = br_grey }),
		TooLong({ fg = color5 }),
		Underlined({ fg = color5 }),
		Visual({ bg = grey, fg = background }),
		VisualNOS({ fg = color5 }),
		WarningMsg({ fg = color5 }),
		WildMenu({ fg = foreground, bg = color4 }),
		Title({ fg = color4, gui = "bold" }),
		Conceal({ fg = color8, bg = background }),
		Cursor({ fg = background, bg = foreground }),
		NonText({ fg = br_grey }),
		EndOfBuffer({ fg = foreground, bg = background }),
		SignColumn({ fg = grey, bg = background }),
		LineNr({ fg =  br_grey, bg = background }),
		VertSplit({ fg = background, bg = grey }),
		ColorColumn({ fg = grey }),
		CursorColumn({ fg = grey }),
		CursorLine({ fg = color8, gui = "None" }),
		CursorLineNr({ fg = color7, bg = background, gui = "None" }),
		PMenu({ fg = color7, bg = color8 }),
		PMenuSel({ fg = foreground, bg = color4 }),
		PmenuSbar({ fg = grey }),
		PmenuThumb({ fg = foreground }),
		TabLine({ fg = br_grey, bg = color8 }),
		TabLineFill({ fg = br_grey, bg = color8 }),
		TabLineSel({ fg = color2, bg = color8 }),
		helpExample({ fg = color3 }),
		helpCommand({ fg = color3 }),

		Boolean({ fg = color1 }),
		Character({ fg = color5 }),
		Comment({ fg = color7, gui = "italic" }),
		Conditional({ fg = purple }),
		Constant({ fg = color1 }),
		Define({ fg = purple }),
		Delimiter({ fg = brown }),
		Float({ fg = color1 }),
		Function({ fg = color4 }),

		Identifier({ fg = color6 }),
		Include({ fg = color4 }),
		Keyword({ fg = purple }),

		Label({ fg = color3 }),
		Number({ fg = color1 }),
		Operator({ fg = foreground }),
		PreProc({ fg = color3 }),
		Repeat({ fg = color3 }),
		Special({ fg = color6 }),
		SpecialChar({ fg = brown }),
		Statement({ fg = color5 }),
		StorageClass({ fg = color3 }),
		String({ fg = color2 }),
		Structure({ fg = purple }),
		Tag({ fg = color3 }),
		Todo({ fg = color3, bg = color8 }),
		Type({ fg = color3 }),
		Typedef({ fg = color3 }),

		SpellBad({ gui = "underline", fg = color5, sp = color5 }),
		SpellLocal({ gui = "underline", fg = color6, sp = color6 }),
		SpellCap({ gui = "underline", fg = color3, sp = color3 }),
		SpellRare({ gui = "underline", fg = purple, sp = purple }),

		DiagnosticError({ fg = color5 }),
		DiagnosticWarn({ fg = color3 }),
		DiagnosticInfo({ fg = color4 }),
		DiagnosticHint({ fg = color6 }),
		DiagnosticUnderlineError({ DiagnosticError, sp = DiagnosticError.fg, gui = "underline" }),
		DiagnosticUnderlineWarn({ DiagnosticWarn, sp = DiagnosticWarn.fg, gui = "underline" }),
		DiagnosticUnderlineInfo({ DiagnosticInfo, sp = DiagnosticInfo.fg, gui = "underline" }),
		DiagnosticUnderlineHint({ DiagnosticHint, sp = DiagnosticHint.fg, gui = "underline" }),

		TSAnnotation({ fg = color4 }),
		TSAttribute({ fg = color4 }),
		TSBoolean({ fg = color4 }),
		TSCharacter({ fg = color3 }),
		TSComment({ fg = color7, gui = "italic" }),
		TSConditional({ fg = color5 }),
		TSConstBuiltin({ fg = color1 }),
		TSConstMacro({ fg = color1 }),
		TSConstant({ fg = color1 }),
		TSConstructor({ fg = foreground }),
		TSEmphasis({ gui = "bold" }),
		TSError({ fg = color5 }),
		TSException({ fg = color5 }),
		TSField({ fg = color2 }),
		TSFloat({ fg = color4 }),
		TSFuncBuiltin({ fg = color1 }),
		TSFuncMacro({ fg = color1 }),
		TSFunction({ fg = color4 }),
		TSInclude({ fg = color6 }),
		TSKeyword({ fg = purple }),
		TSKeywordFunction({ fg = color6 }),
		TSKeywordOperator({ fg = purple }),
		TSLabel({ fg = color6 }),
		TSMethod({ fg = color4 }),
		TSNamespace({ fg = color4 }),
		TSNumber({ fg = color4 }),
		TSOperator({ fg = foreground }),
		TSParameter({ fg = color3 }),
		TSParameterReference({ fg = color1 }),
		TSProperty({ fg = color3 }),
		TSPunctBracket({ fg = foreground }),
		TSPunctDelimiter({ fg = foreground }),
		TSPunctSpecial({ fg = foreground }),
		TSRepeat({ fg = color5 }),
		TSString({ fg = color4 }),
		TSStringEscape({ fg = color2 }),
		TSStringRegex({ fg = color2 }),
		TSStructure({ fg = color4 }),
		TSTag({ fg = color3 }),
		TSTagDelimiter({ fg = color6 }),
		TSText({ fg = color2 }),
		TSType({ fg = color4 }),
		TSTypeBuiltin({ fg = color4 }),
		TSURI({ gui = "underline", bg = color8 }),
		TSUnderline({ gui = "underline" }),
		TSVariable({ fg = color3 }),
		TSVariableBuiltin({ fg = color5 }),

		IndentBlanklineChar({ gui = "nocombine", fg = color8 }),
		IndentBlanklineContextChar({ gui = "nocombine", fg = color7 }),
		IndentBlanklineContextStart({ gui = "underline", sp = color7 }),

		StatusLine({ fg = color7, bg = color8 }),
		StatusLineNC({ fg = grey, bg = color8 }),
		StatusLineTerm({ fg = color10, bg = color2 }),
		StatusLineTermNC({ fg = color11, bg = color8 }),
		User({ Normal }),

		csClass({ fg = color3 }),
		csAttribute({ fg = color3 }),
		csModifier({ fg = purple }),
		csType({ fg = color5 }),
		csUnspecifiedStatement({ fg = color4 }),
		csContextualStatement({ fg = purple }),
		csNewDecleration({ fg = color5 }),
		cOperator({ fg = color6 }),
		cPreCondit({ fg = purple }),

		cssColor({ fg = color6 }),
		cssBraces({ fg = foreground }),
		cssClassName({ fg = purple }),

		DiffAdd({ fg = color2, bg = color8, gui = "bold" }),
		DiffChange({ fg = br_grey, bg = color8 }),
		DiffDelete({ fg = color5, bg = color8, gui = "bold" }),
		DiffText({ fg = color4, bg = color8 }),
		DiffFile({ fg = color5, bg = background }),
		DiffNewFile({ fg = color2, bg = background }),
		DiffLine({ fg = color4, bg = background }),
		DiffAdded({ DiffAdd }),
		DiffRemoved({ DiffDelete }),
		diffRemoved({ DiffDelete }),

		gitCommitOverflow({ fg = color5 }),
		gitCommitSummary({ fg = color2 }),

		htmlBold({ fg = color3, gui = "bold" }),
		htmlItalic({ fg = purple, gui = "italic" }),
		htmlTag({ fg = color6 }),
		htmlEndTag({ fg = color6 }),
		htmlArg({ fg = color3 }),
		htmlTagName({ fg = foreground }),

		javaScript({ fg = foreground }),
		javaScriptNumber({ fg = color1 }),
		javaScriptBraces({ fg = foreground }),

		jsonKeyword({ fg = color2 }),
		jsonQuote({ fg = color2 }),

		markdownCode({ fg = color2 }),
		markdownCodeBlock({ fg = color2 }),
		markdownHeadingDelimiter({ fg = color4 }),
		markdownItalic({ fg = purple, gui = "italic" }),
		markdownBold({ fg = color3, gui = "bold" }),
		markdownCodeDelimiter({ fg = brown, gui = "italic" }),
		markdownError({ fg = foreground, bg = background }),

		typescriptParens({ fg = foreground, guibg = NONE }),

		NeomakeErrorSign({ fg = color5, bg = background }),
		NeomakeWarningSign({ fg = color3, bg = background }),
		NeomakeInfoSign({ fg = color8, bg = background }),
		NeomakeError({ fg = color5, gui = "underline", sp = color5 }),
		NeomakeWarning({ fg = color5, gui = "underline", sp = color5 }),

		ALEErrorSign({ fg = color5, bg = background, gui = "bold" }),
		ALEWarningSign({ fg = color3, bg = background, gui = "bold" }),
		ALEInfoSign({ fg = color8, bg = background, gui = "bold" }),

		NERDTreeExecFile({ fg = foreground }),
		NERDTreeDirSlash({ fg = color4 }),
		NERDTreeOpenable({ fg = color4 }),
		NERDTreeFile({ guifg = NONE }),
		NERDTreeFlags({ fg = color4 }),

		phpComparison({ fg = foreground }),
		phpParent({ fg = foreground }),
		phpMemberSelector({ fg = foreground }),

		pythonRepeat({ fg = purple }),
		pythonOperator({ fg = purple }),

		rubyConstant({ fg = color3 }),
		rubySymbol({ fg = color2 }),
		rubyAttribute({ fg = color4 }),
		rubyInterpolation({ fg = color2 }),
		rubyInterpolationDelimiter({ fg = brown }),
		rubyStringDelimiter({ fg = color2 }),
		rubyRegexp({ fg = color6 }),

		sassidChar({ fg = color5 }),
		sassClassChar({ fg = color1 }),
		sassInclude({ fg = purple }),
		sassMixing({ fg = purple }),
		sassMixinName({ fg = color4 }),

		vimfilerLeaf({ fg = foreground }),
		vimfilerNormalFile({ fg = foreground, bg = background }),
		vimfilerOpenedFile({ fg = color4 }),
		vimfilerClosedFile({ fg = color4 }),

		GitGutterAdd({ fg = color2, bg = background, gui = "bold" }),
		GitGutterChange({ fg = color4, bg = background, gui = "bold" }),
		GitGutterDelete({ fg = color5, bg = background, gui = "bold" }),
		GitGutterChangeDelete({ fg = purple, bg = background, gui = "bold" }),

		SignifySignAdd({ fg = color2, bg = background, gui = "bold" }),
		SignifySignChange({ fg = color4, bg = background, gui = "bold" }),
		SignifySignDelete({ fg = color5, bg = background, gui = "bold" }),
		SignifySignChangeDelete({ fg = purple, bg = background, gui = "bold" }),
		SignifySignDeleteFirstLine({ fg = color5, bg = background, gui = "bold" }),

		xmlTag({ fg = color6 }),
		xmlTagName({ fg = foreground }),
		xmlEndTag({ fg = color6 }),
		Defx_filename_directory({ fg = color4 }),

		TelescopeBorder({ fg = color4 }),
		TelescopePromptBorder({ fg = color6 }),

		CocErrorSign({ fg = color5 }),
		CocWarningSign({ fg = color3 }),
		CocInfoSign({ fg = color4 }),
		CocHintSign({ fg = color6 }),
		CocErrorFloat({ fg = color5 }),
		CocWarningFloat({ fg = color3 }),
		CocInfoFloat({ fg = color4 }),
		CocHintFloat({ fg = color6 }),
		CocDiagnosticsError({ fg = color5 }),
		CocDiagnosticsWarning({ fg = color3 }),
		CocDiagnosticsInfo({ fg = color4 }),
		CocDiagnosticsHint({ fg = color6 }),
		CocSelectedText({ fg = purple }),
		CocCodeLens({ fg = color7 }),

		semshiLocal({ fg = brown }),
		semshiGlobal({ fg = color1 }),
		semshiImported({ fg = brown, gui = "bold" }),
		semshiParameter({ fg = color4 }),
		semshiParameterUnused({ fg = color12, gui = "underline" }),
		semshiFree({ fg = color5 }),
		semshiBuiltin({ fg = color13 }),
		semshiAttribute({ fg = color6 }),
		semshiSelf({ fg = color7 }),
		semshiUnresolved({ fg = color3, gui = "underline" }),
		semshiSelected({ fg = background, bg = color9.li(35) }),
		semshiErrorSign({ fg = foreground, bg = color1.li(5) }),
		semshiErrorChar({ fg = foreground, bg = color1.li(5) }),
	}
end)