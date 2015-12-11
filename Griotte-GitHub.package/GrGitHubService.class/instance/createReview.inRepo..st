factory methods
createReview: aTitle inRepo: aRepository
	| repositoryAPI events checkoutEvent commitEvent pr filename root newFile newEntry tree commit treeResponse commitResponse ref |
	repositoryAPI := aRepository serviceObject apiObject.
	" TODO: Figure out package names. "
	events := (GrEventMiner onRepository: aRepository)
		mineFrom: [ :event | event isGitHubVersionCommit and: [
				event repositoryUrl = repositoryAPI url ] ]
		until: [ :event | event isGitHubVersionCheckout ].
	commitEvent := events first.
	checkoutEvent := events last.
	commitEvent ref = ('heads/' , repositoryAPI defaultBranch)
		ifTrue: [ ^ self ].
	" Create new PR "
	pr := repositoryAPI
		createPullRequestWithTitle: aTitle
		body: 'Created with Griotte.'
		head: (commitEvent copyAfterLast: $/)
		base: repositoryAPI defaultBranch.
	" Store metadata on notes "
	filename := pr head sha.
	root := FileSystem memory workingDirectory.
	newFile := root / filename.
	newFile writeStreamDo: [ :stream |
		stream nextPutAll: 'Hello from Pharo!' ].
	newEntry := GHTreeEntryWithContent
		fromFileReference: newFile
		relativeTo: root.
	tree := GHTree new tree: { newEntry }.
	treeResponse := repositoryAPI createTree: tree.
	commit := GHCommit
		message: 'Griotte metadata'
		parents: { }
		tree: (GHGitObject sha: treeResponse sha type: 'tree').
	commitResponse := repositoryAPI createCommit: commit.
	commit sha: commitResponse sha.
	ref := GHRef ref: 'refs/notes/commits' object: commit.
	repositoryAPI createRef: ref.

	^ GrGithubServiceObject initializeWith: pr accessor: #title