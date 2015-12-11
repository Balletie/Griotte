initialization
initializeWidgets

	self
		title: 'Griotte comment';
		instantiateModels: {
			#infoLabel -> #LabelModel.
			#commentText -> #TextInputFieldModel.
			#editIcon -> #ImageModel.
		}.
	self commentText
		disable.
	self editIcon
		image: self class editIcon.