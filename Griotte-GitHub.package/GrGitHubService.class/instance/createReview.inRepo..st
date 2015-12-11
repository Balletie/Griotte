factory methods
createReview: aTitle inRepo: aRepository
	| repositoryAPI events checkoutEvent commitEvent pr retriever |
	repositoryAPI := aRepository serviceObject apiObject.
	retriever := self packageNamesRetrieverForRepo: repositoryAPI.
	events := (GrEventMiner onPackageNamesRetriever: retriever)
		mineFrom: [ :event | event isGitHubVersionCommit and: [
				event repositoryUrl = repositoryAPI url ] ]
		until: [ :event | event isGitHubVersionCheckout ].
	commitEvent := events first content.
	checkoutEvent := events last content.
	commitEvent ref = ('heads/' , repositoryAPI defaultBranch)
		ifTrue: [ ^ self ].
	" Create new PR "
	pr := repositoryAPI
		createPullRequestWithTitle: aTitle
		body: 'Created with Griotte.'
		head: (commitEvent ref copyAfterLast: $/)
		base: repositoryAPI defaultBranch.

	^ GrGithubServiceObject initializeWith: pr accessor: #title