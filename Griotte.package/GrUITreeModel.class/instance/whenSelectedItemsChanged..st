api-events
whenSelectedItemsChanged: aBlock
	" Custom override for getting the GrUINodes instead of their contents. "

	selectionHolder whenChangedDo: aBlock