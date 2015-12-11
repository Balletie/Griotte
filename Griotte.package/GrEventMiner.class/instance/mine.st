executing
mine
	" Mine the relevant IDE events and return them. "
	| latestEntries mined visitor entryStream |
	latestEntries := log priorEntriesFromHead.
	entryStream := latestEntries readStream.
	mined := OrderedCollection new.
	visitor := GrPackageReducerVisitor packageNames: packageNames.
	[ visitor hasRemainingPackages and: [ entryStream atEnd not ] ] whileTrue: [
		| candidateEntry event candidateTriggers |
		candidateEntry := entryStream peek.
		candidateEntry tags at: #trigger ifPresent: [ :ref |
			candidateEntry := log entryFor: ref.
		].
		" If candidateEntry is not a trigger event, candidateTriggers is empty. "
		candidateTriggers := entryStream upTo: candidateEntry.
		event := candidateEntry content.
		(visitor isStillRelevant: event) ifTrue: [
			mined add: candidateEntry.
			" Add also the triggered events. "
			mined addAll: candidateTriggers.
			" Reduce the amount of relevant entries if this is a versioning event.
			Don't mine for events for these packages from now. "
			(self reducePackageAsserter value: event)
				ifTrue: [ visitor subtractPackagesByPackagesFrom: event ].
		].
	].
	^ mined