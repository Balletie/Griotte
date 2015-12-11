accessing
commentList
	^ (commentList ifNil: [ commentList := self newCommentList ]) asSpecAdapter