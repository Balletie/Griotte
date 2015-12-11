initialization
initializePresenter
	self addReviewButton
		action: [
			self treeList roots: (self treeList roots copyWith: (self class createReview) repository).
		]