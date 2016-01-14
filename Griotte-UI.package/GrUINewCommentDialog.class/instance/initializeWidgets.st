initialization
initializeWidgets

	self title: 'New Comment'.
	commentText := self newTextInput
		ghostText: 'Comment';
		autoAccept: true.