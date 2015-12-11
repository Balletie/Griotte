accessing
selectedReview
	^ selectedItem class name = 'GrReview'
		ifTrue: [ selectedItem ]
		ifFalse: [ nil ]