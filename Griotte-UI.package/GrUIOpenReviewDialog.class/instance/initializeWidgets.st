initialization
initializeWidgets

	super initializeWidgets.
	self
		title: 'Open Review';
		instantiateModels: #(
			#reviewDropList #DropListModel
		).
	self reviewDropList
		displayBlock: [ :item | item title ].
	self focusOrder
		add: self repositoryDropList;
		add: self reviewDropList