initialization
initializePresenter

	self newCommentButton action: [
		self reviewPanel selectedReview ifNotNil: [ :r |
			r
				newComment: 'Test'
				byUser: (GrLoggedInUser
					initializeWithService: GrInMemoryService new
					serviceObject: (GrInMemoryObject initializeWith: 'Skip'))
			].
		commentList refresh
	].
	self reviewPanel whenSelectedReviewChanged: [ :item |
		" Check if it REALLY changed, to avoid unnecessarily creating objects. "
		item == reviewPanel selectedReview ifFalse: [
			self showCommentsFor: item
		]
	].