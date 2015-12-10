instance creation
createOnRepository: aRepository withTitle: aTitleString description: aDescriptionString
	| repo commitEvent pr |
	repo := aRepository apiRepository.
	" Get the last commit event. "
	commitEvent := EpMonitor current log
		fromHeadDetect: [ :event |
			event isGitHubVersionCommit and: [
				event repositoryUrl = repo url ] ]
		ifNotFound: [ ^ self ].
	commitEvent ref = ('heads/' , repo defaultBranch)
		ifTrue: [ ^ self ].
	" Create new PR "
	pr := repo
		createPullRequestWithTitle: aTitleString
		body: aDescriptionString
		head: (commitEvent ref copyAfterLast: $/)
		base: repo defaultBranch.

	^ self new
		initializeWithRepository: aRepository
		pullRequest: pr