actions
setActiveReview: item
	self
		assign: (review := GrUIReview new withReview: item)
		to: #reviewHolder.
	^ self rebuild