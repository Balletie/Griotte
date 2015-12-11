executing
mineFrom: aStartBooleanBlock until: anEndBooleanBlock
	" Mine the IDE events relevant to the package names retrieved. "
	| mined startEntry startRef packageNames visitor |
	mined := OrderedCollection new.
	startEntry := log
		fromHeadDetect: [ :entry | aStartBooleanBlock value: entry content ]
		ifNotFound: [ ^ mined ].
	mined add: startEntry.
	startRef := log referenceTo: startEntry.
	packageNames := packageNamesRetriever value: startEntry content.
	visitor := GrPackageReducerVisitor packageNames: packageNames.
	log
		from: startRef
		detect: [ :entry |
			(visitor isStillRelevant: entry content)
				ifTrue: [
					mined add: entry.
					(anEndBooleanBlock value: entry content)
						ifTrue: [ visitor subtractPackagesByPackagesFrom: entry content ] ].
			visitor hasRemainingPackages not ]
		ifNotFound: [ " Don't do anything, return the events mined up to now. " ].
	^ mined