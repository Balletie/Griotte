initialization
withComment: aComment
	commentModel := aComment.
	self setTextMarkup.
	commentText text: commentModel get.
	^ self