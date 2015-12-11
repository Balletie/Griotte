instance creation
onPackageNames: aCollection

	^ self onPackageNamesRetriever: [ :dummy | aCollection ]