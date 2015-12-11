displaying
open

	dialogModel := self openDialogWithSpec.
	dialogModel okAction: [
		accepted := true
	].
	^ dialogModel