examples-initialization
createReview
	| repo repoService |
	repoService := GrInMemoryObject initializeWith: 'Sample Repository'.
	repo := GrRepository initializeWithServiceObject: repoService.
	^ self createReviewInRepo: repo