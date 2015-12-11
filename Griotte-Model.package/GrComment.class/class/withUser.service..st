initialization
withUser: aUser service: aService
	^ (self initializeWithServiceObject: aService)
		initializeWithUser: aUser.