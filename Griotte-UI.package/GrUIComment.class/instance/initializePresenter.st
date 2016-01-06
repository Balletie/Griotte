initialization
initializePresenter
	self editIcon
		action: [
			self commentText
				enable;
				takeKeyboardFocus.
		].
	self commentText
		acceptBlock: [ :newComment |
			self commentText disable.
			self commentModel edit: newComment.
			self setTextMarkup.
		]