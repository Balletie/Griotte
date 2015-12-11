actions
setCommentBox
	| oldLayout |
	oldLayout := currentLayout.
	currentLayout := nextLayout.
	nextLayout := oldLayout.

	self needFullRebuild: false.
	self buildWithSpecLayout: currentLayout.