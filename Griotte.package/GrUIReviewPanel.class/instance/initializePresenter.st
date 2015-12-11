initialization
initializePresenter
	self addReviewButton
		action: [
			selectedRepository ifNil: [
				self treeList roots: (self treeList roots copyWith: (self class createReview) repository)
			]
			ifNotNil: [
				self class createReviewInRepo: selectedRepository.
				self treeList updateTree.
			]
		].