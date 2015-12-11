accessing
avatarForUser: aUser

	^ GrGithubServiceObject
		initializeWith: aUser serviceObject apiObject
		accessor: #avatar