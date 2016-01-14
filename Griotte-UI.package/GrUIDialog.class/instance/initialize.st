initialization
initialize
	super initialize.
	dialogModel := self openDialogWithSpec.
	dialogModel okAction: [ self createProduct ]