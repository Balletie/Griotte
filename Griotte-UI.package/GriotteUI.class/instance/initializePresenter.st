initialization
initializePresenter
	self reviewPanel whenSelectedReviewChanged: [ :item |
		" Check if it REALLY changed, to avoid unnecessarily creating objects. "
		item == reviewPanel selectedReview ifFalse: [
			self showCommentsFor: item ] ].

	self reviewPanel addReviewButton
		action: [ | review |
			review := self
				showRepositoryDialog: GrUINewReviewDialog
				withInitialGuess: self reviewPanel selectedRepository.
			self addReview: review
		].
	self reviewPanel openReviewButton
		action: [ | review |
			review := self
				showRepositoryDialog: GrUIOpenReviewDialog
				withInitialGuess: self reviewPanel selectedRepository.
			self addReview: review
		]