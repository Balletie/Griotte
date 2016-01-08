accessing
commentListInternal

	^ commentList ifNil: [ commentList := self newCommentList ]