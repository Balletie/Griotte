executing
mineFrom: aStartBooleanBlock until: anEndBooleanBlock
	" Mine the relevant IDE events until aBooleanBlock returns true
	  and return them. "
	| mined packageNames visitor entryStream |
	entryStream := self entryStreamFrom: aStartBooleanBlock.
	mined := OrderedCollection new.
	packageNames := packageNamesRetriever value: entryStream peek content.
	visitor := GrPackageReducerVisitor packageNames: packageNames.
	[ visitor hasRemainingPackages and: [ entryStream atEnd not ] ]
		whileTrue:
			[ | candidateEntry event |
			candidateEntry := self nextEntryFromEntryStream: entryStream.
			event := candidateEntry content.
			(visitor isStillRelevant: event)
				ifFalse: [ entryStream skipTo: candidateEntry ]
				ifTrue:
					[ mined add: candidateEntry.
					" Add also the triggered events. If candidateEntry is not a trigger
				  event, this is empty. "
					mined addAll: (entryStream upTo: candidateEntry).
					" If aBooleanBlock, don't mine for events for these packages from now. "
					(anEndBooleanBlock value: event)
						ifTrue: [ visitor subtractPackagesByPackagesFrom: event ] ] ].
	^ mined