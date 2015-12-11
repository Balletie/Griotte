private
nextEntryFromEntryStream: entryStream
	" Get the next entry from the entryStream. This will follow trigger
	  references until there are no more trigger references left. "
	| candidateEntry |
	candidateEntry := entryStream peek.
	[ candidateEntry tags includesKey: EpLog triggererReferenceKey ]
		whileTrue: [ | ref |
			ref := candidateEntry tags at: EpLog triggererReferenceKey.
			candidateEntry := log entryFor: ref ].
	candidateEntry := candidateEntry.
	^ candidateEntry