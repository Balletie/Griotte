initialization
withAuthor: anAuthorString comment: aCommentString
	authorString := anAuthorString.
	author label: 'Comment by: ', anAuthorString.
	commentString := aCommentString.
	commentText text: aCommentString.
	^ self