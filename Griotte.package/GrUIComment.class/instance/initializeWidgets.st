initialization
initializeWidgets

	self
		title: 'Griotte comment';
		instantiateModels: {
			#authorPreLabel -> #LabelModel.
			#authorLabel -> #LabelModel.
			#timeLabel -> #LabelModel.
			#commentText -> #TextInputFieldModel.
			#editIcon -> #ImageModel.
		}.
	self commentText
		disable.
	self authorPreLabel
		label: 'Comment by: '.
	self authorLabel
		emphasis: #( #bold #italic ).
	self timeLabel
		label: 'at '.
	self editIcon
		image: self class editIcon.