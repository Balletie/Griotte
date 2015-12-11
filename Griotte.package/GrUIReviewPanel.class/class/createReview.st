examples-initialization
createReview
	| creator project repo revService projectService userService repoService |
	revService := GrInMemoryService initializeWith: 'Sample review'.
	userService := GrInMemoryService initializeWith: 'Skip'.
	creator := GrUser initializeWithService: userService.
	projectService := GrInMemoryService initializeWith: 'Griotte'.
	project := GrProject initializeWithService: projectService.
	repoService := GrInMemoryService initializeWith: 'Sample Repository'.
	repo := GrRepository initializeWithService: repoService.
	^ GrReview byCreator: creator onProject: project onRepository: repo withService: revService.