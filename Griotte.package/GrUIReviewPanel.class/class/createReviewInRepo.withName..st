examples-initialization
createReviewInRepo: aRepository withName: aString
	| creator project revService projectService userService |
	revService := GrInMemoryObject initializeWith: aString.
	userService := GrInMemoryObject initializeWith: 'Skip'.
	creator := GrUser initializeWithServiceObject: userService.
	projectService := GrInMemoryObject initializeWith: 'Griotte'.
	project := GrProject initializeWithServiceObject: projectService.
	^ GrReview byCreator: creator onProject: project onRepository: aRepository withService: revService.