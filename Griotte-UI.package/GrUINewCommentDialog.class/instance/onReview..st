initialization
onReview: aReview
	| shortenedTitle |
	shortenedTitle := aReview title contractTo: 20.
	self title: 'Comment on ' , shortenedTitle surroundedBySingleQuotes.
	reviewOrGroup := aReview