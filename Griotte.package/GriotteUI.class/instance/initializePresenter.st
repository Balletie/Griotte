initialization
initializePresenter

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
	self list whenSelectedReviewChanged: [ :item |
		" Check if it REALLY changed, to avoid unnecessarily creating objects. "
		item == list selectedReview ifFalse: [
			self showCommentsFor: item
		]
	].