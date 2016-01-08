accessing
addRepository: aRepository

	(localRepositories anySatisfy: [ :each | aRepository name = each name ])
		ifTrue: [ ^ aRepository ].
	^ localRepositories add: aRepository