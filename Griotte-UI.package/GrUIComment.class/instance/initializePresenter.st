initialization
initializePresenter
	self commentText
		acceptBlock: [ :newComment |
			self commentModel edit: newComment.
			self setTextMarkup.
		]