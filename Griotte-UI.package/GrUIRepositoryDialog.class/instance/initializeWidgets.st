initialization
initializeWidgets

	self title: 'Select repository'.
	repositoryDropList := self newDropList
		displayBlock: [ :item | item name ].