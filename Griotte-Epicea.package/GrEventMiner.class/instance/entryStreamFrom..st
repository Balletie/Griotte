executing
entryStreamFrom: aStartBooleanBlock
	" Skip until encountering the latest commit. "
	| latestEntries entryStream |
	latestEntries := log priorEntriesFromHead.
	entryStream := latestEntries readStream.
	[ entryStream atEnd or: [ aStartBooleanBlock value: entryStream peek content ] ]
		whileFalse: [
			entryStream skipTo: (self nextEntryFromEntryStream: entryStream) ].
	^ entryStream