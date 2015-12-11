examples-initialization
createReview
	| creator project repo revService projectService userService repoService |
	revService := GrInMemoryObject initializeWith: 'Sample review'.
	userService := GrInMemoryObject initializeWith: 'Skip'.
	creator := GrUser initializeWithServiceObject: userService.
	projectService := GrInMemoryObject initializeWith: 'Griotte'.
	project := GrProject initializeWithServiceObject: projectService.
	repoService := GrInMemoryObject initializeWith: 'Sample Repository'.
	repo := GrRepository initializeWithServiceObject: repoService.
	^ GrReview byCreator: creator onProject: project onRepository: repo withService: revService.