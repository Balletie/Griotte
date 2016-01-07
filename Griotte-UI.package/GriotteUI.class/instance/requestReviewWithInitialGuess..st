actions
requestReviewWithInitialGuess: aRepository

	| dialog |
	dialog := self showNewReviewDialog.
	dialog initialRepositoryGuess: aRepository.
	^ dialog get