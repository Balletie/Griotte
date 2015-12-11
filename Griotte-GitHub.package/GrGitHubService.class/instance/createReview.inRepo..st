factory methods
createReview: aTitle inRepo: aRepository
	| repositoryAPI events checkoutEvent commitEvent |
	repositoryAPI := aRepository apiObject.
	events := (GrEventMiner onRepository: aRepository)
		mineFrom: [ :event | event isGitHubVersionCommit and: [
				event repositoryUrl = repositoryAPI url ] ]
		until: [ :event | event isGitHubVersionCheckout ].
	commitEvent := events first.
	checkoutEvent := events last.
	commitEvent ref = ('heads/' , repositoryAPI defaultBranch)
		ifTrue: [ ^ self ].
	" Create new PR "