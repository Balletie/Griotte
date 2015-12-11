initialization
initializeWithService: aService

	service := aService.
	repositories := service loggedInRepositories collect: [ :serviceObj |
		GrRepository initializeWithServiceObject: serviceObj
	]