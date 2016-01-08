I represent a top-level comment in a review (pull request).

I delegate to a GHIssueComment, which is also used for pull requests (every pull request is an issue, but not vice versa).

Public API and Key Messages

- See my superclasses for how to used my methods.
- Create a new comment and an instance of me by sending #newCommentWithBody: to a GrGitHubReview. Otherwise, to use an existing comment, send #initializeWithIssueComment: with a GHIssueComment as parameter.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	issueComment:		a GHIssueComment I delegate to