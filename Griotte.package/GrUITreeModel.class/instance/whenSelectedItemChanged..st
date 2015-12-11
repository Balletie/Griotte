api-events
whenSelectedItemChanged: aBlock
	" Custom override for getting the GrUINodes instead of their contents. "

	self whenSelectedItemsChanged: [ :col |
		col isEmptyOrNil
			ifFalse: [
				aBlock cull: col last
			]
	]