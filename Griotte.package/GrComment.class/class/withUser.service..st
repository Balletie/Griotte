initialization
withUser: aUser service: aService
	^ (self initializeWithService: aService)
		initializeWithUser: aUser.