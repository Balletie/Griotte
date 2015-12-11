initialization
initializeWithPackageNames: aCollection
	" Mine the events that are relevant to the package names in aCollection. "
	packageNames := aCollection asSet.
	self onLog: EpMonitor current log.
	self reducePackagesIf: [ :event |
		event isMonticelloVersionSave or: [ event isMonticelloVersionsLoad ] ].