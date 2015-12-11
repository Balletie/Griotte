displaying
reviewDialog

	| dialog |
	dialog := GrUINewReviewDialog new
		repositories: loggedInUser repositories;
		yourself.
	^ dialog