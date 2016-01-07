displaying
showNewReviewDialog

	| dialog |
	dialog := GrUINewReviewDialog new
		repositories: currentContext value user allRepositories;
		yourself.
	dialog modalRelativeTo: window.
	^ dialog