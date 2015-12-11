initialization
initializePresenter
	self comment textHolder whenChangedDo: [ :commentText |
		commentText isEmpty
			ifTrue: [ self saveButton disable ]
			ifFalse: [ self saveButton enable ].
	].
	self newCommentButton action: [
		self list selectedReview ifNotNil: [ :r |
			r
				newComment: 'Test'
				byUser: (GrLoggedInUser
					initializeWithService: GrInMemoryService new
					serviceObject: (GrInMemoryObject initializeWith: 'Skip'))
			].
		commentList refresh
	].
	self saveButton action: [
		"self commentList items: (self commentList listItems copyWith: self comment text)."
		self toggleCommentBox.
	].
	self cancelButton action: [ self toggleCommentBox ].
	self list whenSelectedReviewChanged: [ :item | self showCommentsFor: item ].