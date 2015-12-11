instance creation
onRepository: aRepository

	^ self new
		initializeWithRepository: aRepository;
		yourself