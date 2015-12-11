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
	self list whenSelectedItemsChanged: [ :items |
		items ifNotEmpty: [
			| head last |
			head := items first.
			last := items last.
			last ifNil: [ ^ self ].
			"TODO: use groupBy to condense changes of different events into one diff"
			self diff
				leftText: (last content accept: EpOldStateVisitor new);
				rightText: (head content accept: EpNewStateVisitor new).
			"FIXME: for some reason this gets called 3 times."
			self showCommentsFor: last.
		].
	]