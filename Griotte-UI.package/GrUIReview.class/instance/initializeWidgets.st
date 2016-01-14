initialization
initializeWidgets

	titleLabel := self newLabel.
	descriptionText := self newTextInput
		acceptOnCR: false.
	avatarImage := self newImage.
	usernameLabel := self newLabel.
	approveButton := self newButton
		label: 'Approve';
		icon: Smalltalk ui icons smallOk.
	rejectButton := self newButton
		label: 'Reject';
		icon: Smalltalk ui icons smallCancel.
	newCommentButton := self newButton
		label: 'New comment'