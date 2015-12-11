factory methods
createReview: aTitle inRepo: aRepository
	| repositoryAPI filetreeRepo events |
	events := (GrEventMiner
		onRepository: aRepository)
		mine.
	repositoryAPI := aRepository apiObject.
	" Create a oneshot filetree repository... "
	filetreeRepo := GitHubFileTreeRepository new
		initializeWithAPI: github
		owner: self loggedInUserAPI name
		repository: repositoryAPI name.