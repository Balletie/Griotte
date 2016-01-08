*Griotte-GitHub-Epicea
asEpiceaEvent

	^ EpGHVersionCheckout
		sha: self head sha
		packageNames: self fileTreeRepository allPackageNames
		repositoryUrl: self gitHubRepository url asString