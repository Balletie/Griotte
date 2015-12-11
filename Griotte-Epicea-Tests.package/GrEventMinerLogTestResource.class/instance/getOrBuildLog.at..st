accessing
getOrBuildLog: aLogBuilderAcceptingBlock at: aSymbol
	| logBuilder |
	logBuilder := self getOrCreateLogBuilderAt: aSymbol.
	aLogBuilderAcceptingBlock value: logBuilder.
	^ logBuilder log