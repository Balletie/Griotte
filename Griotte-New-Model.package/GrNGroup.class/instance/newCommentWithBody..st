creating
newCommentWithBody: aString
	" Create a comment on me "
	self class commentClass
		onGroup: self
		withBody: aString