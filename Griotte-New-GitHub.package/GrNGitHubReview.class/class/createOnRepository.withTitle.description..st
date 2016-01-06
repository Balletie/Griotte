instance creation
createOnRepository: aRepository withTitle: aTitleString description: aDescriptionString
	| repo commitEvent prCreator pr |
	repo := aRepository apiRepository.
	" Get the last commit event. "
	commitEvent := EpMonitor current log
		fromHeadDetect: [ :entry |
			entry content isGitHubVersionCommit and: [
				entry content repositoryUrl = repo url ] ]
		ifNotFound: [ ^ self ].
	commitEvent := commitEvent content.
	commitEvent ref = ('heads/' , repo defaultBranch)
		ifTrue: [ ^ self ].
	" Create new PR "
	prCreator := repo
		pullRequestCreatorWithTitle: aTitleString
		head: (commitEvent ref copyAfterLast: $/)
		base: repo defaultBranch.
	pr := prCreator
		body: aDescriptionString;
		execute.

	^ self new
		initializeWithRepository: aRepository
		pullRequest: pr