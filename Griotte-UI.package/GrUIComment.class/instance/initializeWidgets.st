initialization
initializeWidgets

	self
		title: 'Griotte comment';
		instantiateModels: {
			#infoLabel -> #LabelModel.
			#commentText -> #TextInputFieldModel.
			#editIcon -> #ButtonModel.
		}.
	self commentText
		acceptOnCR: false;
		disable.
	self editIcon
		label: 'Edit    ';
		icon: GriotteUI editIcon;
		help: 'Edit this comment'.