initialization
initializeWidgets

	self
		title: 'Griotte comment';
		instantiateModels: {
			#author -> #LabelModel.
			#commentText -> #TextInputFieldModel.
		}.
	self commentText
		disable.
	self author
		emphasis: #( #bold #italic ).