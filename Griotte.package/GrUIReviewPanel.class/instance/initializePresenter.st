initialization
initializePresenter
	self addReviewButton
		action: [
			self treeList roots add: self class createReview.
		]