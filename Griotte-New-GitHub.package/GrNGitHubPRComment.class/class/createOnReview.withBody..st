instance creation
createOnReview: aReview withBody: aString
	| pr issueComment |
	pr := aReview pullRequest.
	issueComment := pr addCommentWithBody: aString.
	^ self new
		initializeWithIssueComment: issueComment;
		yourself