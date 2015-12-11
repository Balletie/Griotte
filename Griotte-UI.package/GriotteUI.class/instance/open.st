displaying
open
	| menuModel |
	SpecInterpreter bindings: ToolbarWindowSpecBinding new.
	windowModel := self openWithSpec.
	menuModel := self loginMenu.
	windowModel toolbar: menuModel.
	windowModel toolbarFillSpace: false.