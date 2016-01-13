initialization
initializePresenter
	self reviewPanel whenSelectedReviewChanged: [ :item |
		" Check if it REALLY changed, to avoid unnecessarily creating objects. "
		item == self reviewPanel selectedReview ifFalse: [
			self setActiveReview: item ] ].

	self reviewPanel addReviewButton
		action: [ | rev |
			rev := self
				showRepositoryDialog: GrUINewReviewDialog
				withInitialGuess: self reviewPanel selectedRepository.
			self addReview: rev
		].
	self reviewPanel openReviewButton
		action: [ | rev |
			rev := self
				showRepositoryDialog: GrUIOpenReviewDialog
				withInitialGuess: self reviewPanel selectedRepository.
			self addReview: rev
		]