initialization
byCreator: aUser onProject: aProject onRepository: aRepository withService: aService
	^ (self initializeWithService: aService)
		initializeWithCreator: aUser project: aProject repository: aRepository.
		