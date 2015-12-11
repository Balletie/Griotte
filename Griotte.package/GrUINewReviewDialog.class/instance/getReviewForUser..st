accessing
getReviewForUser: aLoggedInUser

	[ accepted or: [ dialogModel cancelled ] ]
		whileFalse: [ " wait " ].

	dialogModel cancelled ifTrue: [ ^ nil ].
	^ aLoggedInUser
		newReview: reviewInputText text asString
		onRepository: repositoryDropList selectedItem