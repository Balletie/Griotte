initialization
initializeWidgets

	self
		title: 'Griotte';
		instantiateModels: #( 
			#reviewPanel #GrUIReviewPanel
			#diff #DiffModel
			#newCommentButton #ButtonModel
			).
	self diff
		showOptions: false.
	self newCommentButton label: 'New comment'.