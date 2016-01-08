I am a GitHub backend for a review in a repository.

I know how to approve (merge) and reject (close) a review (pull request).

My collaborator is a GHPullRequest, which I delegate to for my behavior and accessing.

Public API and Key Messages

- See my superclass for information about each method.
- To create an instance of me, use #createOnRepository:withTitle:description: with a GrRepository as first parameter, and Strings for the last two. This will create a new pull request on the repository.

Alternatively, use my instance-side method initializeWithRepository:pullRequest: to create me with an existing pull request.

Internal Representation and Key Implementation Points.

    Instance Variables
	pullRequest:		a GHPullRequest, which I delegate to.
	repository:		a GrRepository.