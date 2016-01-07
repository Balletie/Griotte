displaying
showRepositoryDialog: aRepositoryDialogClass

	| dialog sortedRepos |
	sortedRepos := currentContext value allRepositories
		sorted: [ :left :right | left name <= right name ].
	dialog := aRepositoryDialogClass new
		repositories: sortedRepos;
		yourself.
	dialog modalRelativeTo: window.
	^ dialog