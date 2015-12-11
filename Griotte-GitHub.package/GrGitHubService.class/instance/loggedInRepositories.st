accessing
loggedInRepositories

	^ self loggedInUserAPI repositories collect: [ :apiObject |
		GrGithubServiceObject initializeWith: apiObject accessor: #name
	]