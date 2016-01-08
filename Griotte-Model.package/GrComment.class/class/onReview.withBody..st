instance creation
onReview: aReview withBody: aString

	self assert: aReview class = self reviewClass.
	^ self createOnReview: aReview withBody: aString