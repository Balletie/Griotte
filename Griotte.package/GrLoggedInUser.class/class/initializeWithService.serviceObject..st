initialization
initializeWithService: aService serviceObject: aServiceObject
	^ (self initializeWithServiceObject: aServiceObject)
		initializeWithService: aService