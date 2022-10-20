-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors

return lush(function(injected_functions)
	local sym = injected_functions.sym
	-- selene: allow(undefined_variable)
	return {
		sym("@attribute")({ fg = colors.blue }),
		sym("@boolean")({ fg = colors.blue }),
		sym("@character")({ fg = colors.yellow }),
		sym("@character.special")({ fg = colors.brown }),
		sym("@comment")({ fg = colors.white, gui = "italic" }),
		sym("@conditional")({ fg = colors.red }),
		sym("@constant")({ fg = colors.red }),
		sym("@constant.builtin")({ fg = colors.red }),
		sym("@constant.macro")({ fg = colors.red }),
		sym("@constructor")({ fg = colors.foreground }),
		sym("@debug")({ fg = colors.redDebug }),
		sym("@define")({ fg = colors.purple }),
		sym("@exception")({ fg = colors.red }),
		sym("@field")({ fg = colors.green }),
		sym("@float")({ fg = colors.blue }),
		sym("@function")({ fg = colors.blue }),
		sym("@function.builtin")({ fg = colors.red }),
		sym("@function.macro")({ fg = colors.red }),
		sym("@include")({ fg = colors.cyan }),
		sym("@keyword")({ fg = colors.purple }),
		sym("@keyword.function")({ fg = colors.cyan }),
		sym("@keyword.operator")({ fg = colors.purple }),
		sym("@label")({ fg = colors.cyan }),
		sym("@method")({ fg = colors.blue }),
		sym("@namespace")({ fg = colors.blue }),
		sym("@none")({ bg = "NONE", fg = "NONE" }),
		sym("@number")({ fg = colors.blue }),
		sym("@operator")({ fg = colors.foreground }),
		sym("@parameter")({ fg = colors.yellow }),
		sym("@preproc")({ fg = colors.yellow }),
		sym("@property")({ fg = colors.yellow }),
		sym("@punctuation.bracket")({ fg = colors.foreground }),
		sym("@punctuation.delimiter")({ fg = colors.foreground }),
		sym("@punctuation.special")({ fg = colors.br_cyan, gui = "bold" }),
		sym("@repeat")({ fg = colors.red }),
		sym("@storageclass")({ fg = colors.yellow }),
		sym("@string")({ fg = colors.blue }),
		sym("@string.escape")({ fg = colors.green }),
		sym("@string.regex")({ fg = colors.green }),
		sym("@string.special")({ fg = colors.brown }),
		sym("@symbol")({ fg = colors.cyan }),
		sym("@tag")({ fg = colors.yellow }),
		sym("@tag.attribute")({ fg = colors.cyan }),
		sym("@tag.delimiter")({ fg = colors.cyan }),
		sym("@text")({ fg = colors.green }),
		sym("@text.bold")({ gui = "bold", fg = colors.yellow }),
		sym("@text.danger")({ fg = colors.red }),
		sym("@text.diff.add")({fg = colors.green, bg = colors.br_black, gui = "bold"}),
		sym("@text.diff.delete")({fg = colors.red, bg = colors.br_black, gui = "bold"}),
		sym("@text.emphasis")({ gui = "italic", fg = colors.purple }),
		sym("@text.environment")({ fg = colors.red }),
		sym("@text.environment.name")({ fg = colors.yellow }),
		sym("@text.literal")({ fg = colors.green }),
		sym("@text.math")({ fg = colors.cyan }),
		sym("@text.note")({ fg = colors.cyan }),
		sym("@text.reference")({ fg = colors.red }),
		sym("@text.strike")({ gui = "strikethrough" }),
		sym("@text.title")({ fg = colors.blue, gui = "bold" }),
		sym("@text.todo")({ fg = colors.yellow, bg = colors.br_black }),
		sym("@text.underline")({ gui = "underline" }),
		sym("@text.uri")({ gui = "underline", bg = colors.br_black }),
		sym("@type")({ fg = colors.blue }),
		sym("@type.builtin")({ fg = colors.blue }),
		sym("@type.definition")({ fg = colors.yellow }),
		sym("@variable")({ fg = colors.yellow }),
		sym("@variable.builtin")({ fg = colors.red }),
	}
	-- selene: deny(undefined_variable)
end)
