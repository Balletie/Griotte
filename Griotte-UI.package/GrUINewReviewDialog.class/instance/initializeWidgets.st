initialization
initializeWidgets

	super initializeWidgets.
	self
		title: 'New Review';
		instantiateModels: #(
			#reviewInputText #TextInputFieldModel
			#descriptionInputText #TextInputFieldModel
		).
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