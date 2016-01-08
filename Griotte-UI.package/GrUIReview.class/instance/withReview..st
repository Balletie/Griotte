initialization
withReview: aReview
	| avatar |
	reviewModel := aReview.
	avatar := aReview creator avatar
		scaledToSize: self class avatarSize @ self class avatarSize.
	avatarImage image: avatar.
	usernameLabel label: aReview creator username.
	titleLabel label: 'Title: ' , aReview title.
	descriptionText text: aReview description.
	self loadComments