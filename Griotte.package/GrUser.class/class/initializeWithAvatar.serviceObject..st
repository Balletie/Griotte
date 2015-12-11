initialization
initializeWithAvatar: anAvatar serviceObject: aService
	^ (self initializeWithServiceObject: aService) 
		initializeWithAvatar: anAvatar;
		yourself