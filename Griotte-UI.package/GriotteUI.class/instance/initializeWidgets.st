initialization
initializeWidgets

	self
		title: 'Griotte';
		instantiateModels: #( 
			#reviewPanel #GrUIReviewPanel
			#newCommentButton #ButtonModel
			).
	self newCommentButton
		label: 'New comment'.
	self reviewPanel addReviewButton
		disable.
	self reviewPanel openReviewButton
		disable.