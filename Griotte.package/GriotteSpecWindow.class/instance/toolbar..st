accessing
toolbar: aToolbar
	aToolbar hResizing: #shrinkWrap.
	self replacePane: currentToolbar with: aToolbar.
	currentToolbar := aToolbar.