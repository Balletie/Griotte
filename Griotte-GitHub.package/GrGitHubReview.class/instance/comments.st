accessing
comments

	^ pullRequest comments collect: [ :each |
		self class commentClass new
			initializeWithIssueComment: each ]