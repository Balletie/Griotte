*Griotte-GitHub
visitGitHubVersionCommit: anEvent
	^ (self displayOperation: 'GitHub commit on: '),
		(self displayString: anEvent ref),
		(self displayOperation: ' to: '),
		(self displayString: anEvent repositoryUrl)