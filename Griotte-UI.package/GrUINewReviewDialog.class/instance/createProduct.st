accessing
createProduct
	^ super createProduct
		newReviewWithTitle: reviewInputText text asString
		description: descriptionInputText text asString