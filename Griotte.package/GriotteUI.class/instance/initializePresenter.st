initialization
initializePresenter
	self comment textHolder whenChangedDo: [ :commentText |
		commentText isEmpty
			ifTrue: [ self saveButton disable ]
			ifFalse: [ self saveButton enable ].
	].
	self newCommentButton action: [ self toggleCommentBox ].
	self saveButton action: [
		"self commentList items: (self commentList listItems copyWith: self comment text)."
		self toggleCommentBox.
	].
	self cancelButton action: [ self toggleCommentBox ].