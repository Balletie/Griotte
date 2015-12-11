initialization
initializeWithPackageNamesRetriever: aBlockReturningACollection
	" Mine the events that are relevant to the package names in aCollection. "
	packageNamesRetriever := aBlockReturningACollection.
	self onLog: EpMonitor current log.