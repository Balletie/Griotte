initialization
withAuthor: anAuthorString comment: aCommentString time: aDateAndTime
	authorString := anAuthorString.
	commentString := aCommentString.
	timeStamp := aDateAndTime.
	self setTextMarkup.
	commentText text: aCommentString.
	^ self