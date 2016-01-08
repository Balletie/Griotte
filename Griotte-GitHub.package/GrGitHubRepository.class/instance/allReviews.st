accessing
allReviews

	| issues |
	issues := self apiRepository issueLister execute.
	^ issues
		select: #isPullRequest
		thenCollect: [ :issue |
			GrGitHubReview new
				initializeWithRepository: self
				pullRequest: issue asPullRequest ]