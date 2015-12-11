accessing
newReview: aString onRepository: aRepository

	^ GrReview
		byCreator: self
		onRepository: aRepository
		withService: (service createReview: aString inRepo: aRepository).