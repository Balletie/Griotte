initialization
initializeWidgets

	self
		title: 'New Review';
		instantiateModels: #(
			#repositoryDropList #DropListModel
			#reviewInputText #TextInputFieldModel
			#descriptionInputText #TextInputFieldModel
		).
	self repositoryDropList
		displayBlock: [ :item | item name ].
	self reviewInputText
		ghostText: 'Title';
		autoAccept: true.
	self descriptionInputText
		ghostText: 'Description';
		autoAccept: true.
	self focusOrder
		add: self repositoryDropList;
		add: self reviewInputText;
		add: self descriptionInputText