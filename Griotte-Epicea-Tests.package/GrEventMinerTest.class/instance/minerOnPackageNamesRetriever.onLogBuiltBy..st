accessing
minerOnPackageNamesRetriever: aBlockReturningACollection onLogBuiltBy: aBlock
	" Utility method to create a log and let the miner mine from it. "
	| log miner |
	log := self logResource
		getOrBuildLog: aBlock
		at: thisContext sender methodSelector.
	miner := GrEventMiner onPackageNamesRetriever: aBlockReturningACollection.
	^ miner onLog: log; yourself