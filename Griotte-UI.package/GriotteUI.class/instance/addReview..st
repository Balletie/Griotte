initialization
addReview: review

	review ifNotNil: [ 
		self reviewPanel addReview: review.
		currentContext value addRepository: review repository
	]