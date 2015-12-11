instance creation
onPackageNamesRetriever: aBlockReturningACollection

	^ self new
		initializeWithPackageNamesRetriever: aBlockReturningACollection;
		yourself