as yet unclassified
initializeWithPackageNames: aCollection serviceObject: aServiceObject

	^ (self initializeWithServiceObject: aServiceObject)
		initializeWithPackageNames: aCollection;
		yourself