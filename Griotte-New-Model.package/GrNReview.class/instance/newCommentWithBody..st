creating
newCommentWithBody: aString
	" Create a top-level comment on the review. "
	self class commentClass
		onReview: self
		withBody: aString