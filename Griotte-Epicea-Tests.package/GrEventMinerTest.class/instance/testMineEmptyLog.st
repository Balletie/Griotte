tests
testMineEmptyLog
	| mined miner |
	miner := self
		minerOnPackageNamesRetriever: [ :dummy | #('Griotte-Epicea') ]
		onLogBuiltBy: [ :logBuilder | " Let it be empty. " ].
	mined := miner mineFrom: [ :start | true ] until: [ :end | true ].
	self assert: mined isEmpty.