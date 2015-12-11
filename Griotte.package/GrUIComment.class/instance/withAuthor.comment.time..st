initialization
withAuthor: anAuthorString comment: aCommentString time: aDateAndTime
	authorString := anAuthorString.
	authorLabel label: anAuthorString.
	timeLabel
		label: ((DateAndTime now - aDateAndTime) roundTo: 1 day) humanReadablePrintString , ' ago';
		help: aDateAndTime asString.
	commentString := aCommentString.
	commentText text: aCommentString.
	^ self