api-events
whenSelectedNodeChanged: aBlock
	" Custom override for getting the GrUINodes instead of their contents. "

	self whenSelectedNodesChanged: [ :col |
		col isEmptyOrNil
			ifFalse: [
				aBlock cull: col last
			]
	]