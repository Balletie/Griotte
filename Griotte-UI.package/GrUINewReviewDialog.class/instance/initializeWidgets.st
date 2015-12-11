initialization
initializeWidgets

	self
		title: 'New Review';
		instantiateModels: #(
			#repositoryDropList #DropListModel
			#reviewInputText #TextInputFieldModel
		).
	self repositoryDropList
		displayBlock: [ :item | item get ].
	self reviewInputText
		autoAccept: true.