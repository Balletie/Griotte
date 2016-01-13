initialization
initializeWidgets

	self
		title: 'Griotte comment';
		instantiateModels: {
			#infoLabel -> #LabelModel.
			#commentText -> #TextInputFieldModel.
		}.
	self commentText
		acceptOnCR: false.