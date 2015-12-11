initialization
initializeWidgets

	self
		title: 'Griotte Reviews';
		instantiateModels: {
			#titleLabel -> #LabelModel.
			#addReviewButton -> #ButtonModel.
			#treeList -> #TreeModel.
		}.

	self titleLabel label: 'Reviews'.
	self addReviewButton
		label: 'New Review';
		icon: GriotteUI addIcon;
		help: 'Create a new review'.
	self treeList
		multiSelection: false;
		displayBlock: [ :item | item get ];
		rootNodeHolder: [ :item |
			GrUIRepositoryNode new
				content: item.
		].
	self treeList whenSelectedItemChanged: [ :item |
		" TODO: Make specialised TreeNode classes for reviews and repositories "
		item class name = 'GrReview'
			ifTrue: [
				selectedReviewChanged cull: item.
				selectedReview := item.
			]
			ifFalse: [
				selectedRepository := item.
			]
	].