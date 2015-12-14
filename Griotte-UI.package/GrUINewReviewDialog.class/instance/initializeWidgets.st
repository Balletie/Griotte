initialization
initializeWidgets

	self
		title: 'New Review';
		instantiateModels: #(
			#repositoryDropList #DropListModel
			#reviewInputText #TextInputFieldModel
		).
	self repositoryDropList
		displayBlock: [ :item | (item owner at: 'login') , '/' , item name ].
	self reviewInputText
		autoAccept: true.