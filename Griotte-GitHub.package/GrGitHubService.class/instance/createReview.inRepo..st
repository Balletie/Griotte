factory methods
createReview: aTitle inRepo: aRepository
	| repositoryAPI events commitEvent pr retriever |
	repositoryAPI := aRepository serviceObject apiObject.
	retriever := self packageNamesRetrieverForRepo: repositoryAPI.
	" Get the last commit event. "
	events := (GrEventMiner onPackageNamesRetriever: retriever)
		entryStreamFrom: [ :event | event isGitHubVersionCommit and: [
				event repositoryUrl = repositoryAPI url ] ].
	commitEvent := events peek content.
	commitEvent ref = ('heads/' , repositoryAPI defaultBranch)
		ifTrue: [ ^ self ].
	" Create new PR "
	pr := repositoryAPI
		createPullRequestWithTitle: aTitle
		body: 'Created with Griotte.'
		head: (commitEvent ref copyAfterLast: $/)
		base: repositoryAPI defaultBranch.

	^ GrGithubServiceObject initializeWith: pr accessor: #title