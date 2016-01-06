actions
requestReviewWithInitialGuess: aRepository

	| dialog |
	dialog := self showReviewDialog.
	dialog initialRepositoryGuess: aRepository.
	^ dialog getReview