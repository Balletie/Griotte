creating
newReviewWithTitle: aTitleString description: aDescriptionString
	| review |
	review := self class reviewClass
		onRepository: self
		withTitle: aTitleString
		description: aDescriptionString.
	self addReview: review.
	^ review