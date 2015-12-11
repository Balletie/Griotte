accessing
getOrCreateLogBuilderAt: aSymbol
	| logBuilder |
	logBuilder := idToLogBuilders
		at: aSymbol
		ifAbsentPut: [ EpLogBuilder new ].
	^ logBuilder