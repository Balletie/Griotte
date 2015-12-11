examples-initialization
createReviewInRepo: aRepository withName: aString
	| creator revService userService |
	revService := GrInMemoryObject initializeWith: aString.
	userService := GrInMemoryObject initializeWith: 'Skip'.
	creator := GrUser initializeWithServiceObject: userService.
	^ GrReview byCreator: creator onRepository: aRepository withService: revService.