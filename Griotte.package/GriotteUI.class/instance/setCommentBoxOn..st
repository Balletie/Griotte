actions
setCommentBoxOn: anItem
	| oldLayout |
	oldLayout := currentLayout.
	currentLayout := nextLayout.
	nextLayout := oldLayout.

	self needRebuild: false.
	self diff needRebuild: false.
	self list needRebuild: false.
	"self comment needRebuild: false."
	self buildWithSpecLayout: currentLayout.