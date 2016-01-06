initialization
initializePresenter

	self reviewPanel whenSelectedReviewChanged: [ :item |
		" Check if it REALLY changed, to avoid unnecessarily creating objects. "
		item == reviewPanel selectedReview ifFalse: [
			self showCommentsFor: item
		]
	].
	self reviewPanel addReviewButton
		action: [ | review |
			review := self requestReviewWithInitialGuess:
				self reviewPanel selectedRepository.
			review ifNotNil: [
				self reviewPanel addReview: review
			].
		].