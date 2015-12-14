displaying
reviewDialog

	| dialog |
	dialog := GrUINewReviewDialog new
		repositories: currentContext value repositories;
		yourself.
	^ dialog