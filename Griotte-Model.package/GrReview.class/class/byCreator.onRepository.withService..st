initialization
byCreator: aUser onRepository: aRepository withService: aService
	^ (self initializeWithServiceObject: aService)
		initializeWithCreator: aUser repository: aRepository.
		