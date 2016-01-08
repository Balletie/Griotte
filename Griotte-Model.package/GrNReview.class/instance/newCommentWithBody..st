creating
newCommentWithBody: aString
	" Create a top-level comment on the review. "
	| comment |
	comment := self class commentClass
		onReview: self
		withBody: aString.
	comments add: comment.
	^ comment