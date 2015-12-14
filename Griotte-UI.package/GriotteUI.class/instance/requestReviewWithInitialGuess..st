actions
requestReviewWithInitialGuess: aRepository

	| dialog |
	dialog := self reviewDialog.
	dialog initialRepositoryGuess: aRepository.
	dialog modalRelativeTo: window.
	^ dialog getReviewForUser: nil