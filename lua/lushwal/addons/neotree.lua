local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	return {
            NeoTreeDirectoryName(        { fg = colors.blue }),
            NeoTreeDirectoryIcon(        { fg = colors.blue }),
            NeoTreeNormal(               { fg = colors.foreground, bg = colors.background}),
            NeoTreeStatusLineNC(         { fg = colors.mantle, bg = colors.mantle }),
            NeoTreeNormalNC(             { fg = colors.text, bg = colors}),
            NeoTreeGitConflict(          { fg = colors.red }),
            NeoTreeFilterTerm(           { fg = colors.green, gui = "bold" }),
            NeoTreeGitStaged(            { fg = colors.green }),
            NeoTreeGitUnstaged(          { fg = colors.red }),
            NeoTreeGitAdded(             { fg = colors.green }),
            NeoTreeGitDeleted(           { fg = colors.red }),
            NeoTreeGitModified(          { fg = colors.yellow }),
            NeoTreeRootName(             { fg = colors.blue, gui ="bold" }),
            NeoTreeExpander(             { fg = colors.foreground }),
            NeoTreeIndentMarker(         { fg = colors.foreground }),
            NeoTreeSymbolicLinkTarget(   { fg = colors.foreground }),
            NeoTreeModified(             { fg = colors.foreground }),
            NeoTreeGitIgnored(           { fg = colors.foreground }),
            NeoTreeGitUntracked(         { fg = colors.foreground }),
            NeoTreeTitleBar(             { fg = colors.foreground, bg = colors.blue }),
            NeoTreeFileNameOpened(       { fg = colors.foreground }),
            NeoTreeDimText(              { fg = colors.foreground }),
            NeoTreeTabActive(            { fg = colors.foreground, bg = colors.background, gui="bold" }),
            NeoTreeTabInactive(          { fg = colors.foreground, bg = colors.background }),
            NeoTreeTabSeparatorActive(   { fg = colors.foreground, bg = colors.background }),
            NeoTreeTabSeparatorInactive( { fg = colors.foreground, bg = colors.background }),
            NeoTreeVertSplit(            { fg = colors.foreground, bg = colors.background }),
            NeoTreeFloatBorder(          { link = "FloatBorder" }),
            NeoTreeFloatTitle(           { link = "FloatTitle" }),
	}
end)