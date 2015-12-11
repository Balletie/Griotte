factory methods
createReview: aTitle inRepo: aRepository
	| repositoryAPI commitEvent pr retriever |
	repositoryAPI := aRepository serviceObject apiObject.
	retriever := self packageNamesRetrieverForRepo: repositoryAPI.
	" Get the last commit event. "
	commitEvent := EpMonitor current log
		fromHeadDetect: [ :event |
			event isGitHubVersionCommit and: [
				event repositoryUrl = repositoryAPI url ] ]
		ifNotFound: [ ^ self ].
	commitEvent ref = ('heads/' , repositoryAPI defaultBranch)
		ifTrue: [ ^ self ].
	" Create new PR "
	pr := repositoryAPI
		createPullRequestWithTitle: aTitle
		body: 'Created with Griotte.'
		head: (commitEvent ref copyAfterLast: $/)
		base: repositoryAPI defaultBranch.

	^ GrGithubServiceObject initializeWith: pr accessor: #title