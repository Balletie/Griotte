accessing
allRepositories
	| result |
	result := self localRepositories copy.
	self user allRepositories do: [ :each |
		(result noneSatisfy: [ :local | local name = each name ])
			ifTrue: [ result add: each] ].
	^ result