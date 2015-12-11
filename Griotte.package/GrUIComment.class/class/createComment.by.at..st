examples-initialization
createComment: aCommentString by: anAuthorString at: aDateAndTime
	| userServ commentServ |
	commentServ := GrInMemoryObject
		initializeWith: aCommentString
		timestamp: aDateAndTime.
	userServ := GrInMemoryObject
		initializeWith: anAuthorString
		timestamp: DateAndTime now - 2 years.
	^ GrComment
		withUser: (GrUser initializeWithServiceObject: userServ)
		service: commentServ