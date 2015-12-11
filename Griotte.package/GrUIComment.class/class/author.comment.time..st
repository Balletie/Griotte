examples-initialization
author: anAuthorString comment: aCommentString time: aDateAndTime
	| commentServ userServ comment |
	" TODO: This should be put in a factory method once the interfaces are more mature "
	commentServ := GrInMemoryService initializeWith: aCommentString timestamp: aDateAndTime.
	userServ := GrInMemoryService initializeWith: anAuthorString timestamp: DateAndTime now - 2 years.
	comment := GrComment withUser: (GrUser initializeWithService: userServ) service: commentServ.
	^ self new
		withComment: comment.