displaying
showRepositoryDialog: aRepositoryDialogClass withInitialGuess: aRepository

	| dialog sortedRepos |
	sortedRepos := currentContext value allRepositories
		sorted: [ :left :right | left name <= right name ].
	dialog := aRepositoryDialogClass new
		repositories: sortedRepos;
		initialRepositoryGuess: aRepository;
		yourself.
	dialog modalRelativeTo: window.
	^ dialog get