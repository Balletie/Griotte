running
tearDown

	idToLogBuilders valuesDo: [ :each | each release: each log ]