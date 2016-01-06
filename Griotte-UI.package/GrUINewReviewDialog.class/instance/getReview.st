accessing
getReview

	[ accepted or: [ dialogModel cancelled ] ]
		whileFalse: [ " wait " ].

	dialogModel cancelled ifTrue: [ ^ nil ].
	^ repositoryDropList selectedItem
		newReviewWithTitle: reviewInputText text asString
		description: descriptionInputText text asString