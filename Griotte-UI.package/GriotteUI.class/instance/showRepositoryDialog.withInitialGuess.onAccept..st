displaying
showRepositoryDialog: aRepositoryDialogClass withInitialGuess: aRepository onAccept: aBlock

	| sortedRepos |
	sortedRepos := currentContext value allRepositories
		sorted: [ :left :right | left name <= right name ].
	^ aRepositoryDialogClass new
		repositories: sortedRepos;
		initialRepositoryGuess: aRepository;
		onAccept: aBlock;
		modalRelativeTo: window