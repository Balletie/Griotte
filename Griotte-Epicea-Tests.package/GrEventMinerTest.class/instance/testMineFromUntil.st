tests
testMineFromUntil
	| start end miner minedEvents |
	miner := self
		minerOnPackageNamesRetriever: [ :dummy | #('Griotte-Epicea') ]
		onLogBuiltBy: [ :logBuilder | | trigger |
			logBuilder logInitial.
			logBuilder logEvent: (EpExpressionEvaluation expression: 'before').
			logBuilder logEvent: (EpMonticelloVersionsLoad versionNames: #('Griotte-Epicea-')).
			start := logBuilder log head content.
			trigger := logBuilder logHeadReference.
			logBuilder
				logEvent: (EpClassAddition class: GrPackageReducerVisitor)
				triggerReference: trigger.
			logBuilder logEvent: (EpClassAddition class: GrRelevantEventVisitor).
			logBuilder logEvent: (EpExpressionEvaluation expression: 'end').
			end := logBuilder log head content.
			logBuilder logEvent: (EpExpressionEvaluation expression: 'after') ].
	minedEvents := miner
		mineFrom: [ :event | event = end ]
		until: [ :event | event = start ].
	self assert: minedEvents size equals: 4.
	self assert: minedEvents first content equals: end.
	self assert: minedEvents last content equals: start.