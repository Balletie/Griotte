initialization
initializePresenter
	self editIcon
		action: [
			self commentText
				enable;
				takeKeyboardFocus.
		].