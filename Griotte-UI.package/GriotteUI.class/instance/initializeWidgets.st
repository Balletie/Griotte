initialization
initializeWidgets

	self
		title: 'Griotte';
		instantiateModels: #( 
			#reviewPanel #GrUIReviewPanel
			#reviewHolder #LabelModel
			).
	self reviewHolder
		label: 'No review selected. Select a review in the reviewpanel on the left.'.
	self reviewPanel addReviewButton
		disable.
	self reviewPanel openReviewButton
		disable.