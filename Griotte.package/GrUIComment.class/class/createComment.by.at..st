examples-initialization
createComment: aCommentString by: anAuthorString at: aDateAndTime
	| userServ commentServ |
	commentServ := GrInMemoryService
		initializeWith: aCommentString
		timestamp: aDateAndTime.
	userServ := GrInMemoryService
		initializeWith: anAuthorString
		timestamp: DateAndTime now - 2 years.
	^ GrComment
		withUser: (GrUser initializeWithService: userServ)
		service: commentServ