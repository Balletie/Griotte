creating
newCommentWithBody: aString
	" Create a comment on me "
	| comment |
	comment := self class commentClass
		onGroup: self
		withBody: aString.
	comments add: comment.
	^ comment