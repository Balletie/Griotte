initialization
initializeWith: anObject timestamp: aDateAndTime
	self set: anObject.
	createdTimestamp := aDateAndTime.
	editTimestamp := aDateAndTime.