initialization
byCreator: aUser onProject: aProject onRepository: aRepository withService: aService
	^ (self initializeWithServiceObject: aService)
		initializeWithCreator: aUser project: aProject repository: aRepository.
		