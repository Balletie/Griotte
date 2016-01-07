accessing
allReviews

	| issues |
	issues := self apiRepository issueLister execute.
	^ issues
		select: #isPullRequest
		thenCollect: [ :issue |
			GrNGitHubReview new
				initializeWithRepository: self
				pullRequest: issue asPullRequest ]