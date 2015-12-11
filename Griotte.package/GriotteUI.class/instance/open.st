displaying
open
	| menuModel |
	SpecInterpreter bindings: GriotteSpecBinding new.
	windowModel := self openWithSpec.
	menuModel := self loginMenu.
	windowModel toolbar: menuModel.