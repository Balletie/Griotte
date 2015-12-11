accessing
loggedInUser

	^ GrGithubServiceObject
		initializeWith: self loggedInUserAPI
		accessor: #login