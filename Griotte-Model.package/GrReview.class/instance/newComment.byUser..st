creating
newComment: aCommentString byUser: aUser
	^ topComments add: (GrComment
		withUser: aUser
		service: (aUser service createComment: aCommentString))