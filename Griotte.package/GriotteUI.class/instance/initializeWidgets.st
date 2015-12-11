initialization
initializeWidgets
	currentLayout := self class specLayout.
	nextLayout := self class specLayoutAddComment.
	self
		title: 'Griotte';
		instantiateModels: #( 
			#list #GrUIReviewPanel
			#diff #DiffModel
			#comment #TextInputFieldModel
			#newCommentButton #ButtonModel
			#saveButton #ButtonModel
			#cancelButton #ButtonModel
			).
	self diff
		showOptions: false.
	self comment
		ghostText: 'Add a comment here...';
		autoAccept: true;
		acceptOnCR: false.
	self newCommentButton label: 'New comment'.
	self saveButton
		label: 'Save';
		enabled: false.
	self cancelButton label: 'Cancel'.
	self showCommentsFor: nil.
	self focusOrder
		add: self comment;
		add: self saveButton.