accessing
getOrBuildLog: aLogBuilderAcceptingBlock

	^ self
		getOrBuildLog: aLogBuilderAcceptingBlock
		at: thisContext sender methodSelector