initialization
withComment: aComment
	commentModel := aComment.
	self setTextMarkup.
	commentText text: commentModel body.
	^ self