initialization
initializeWidgets

	self
		title: 'Griotte Reviews';
		instantiateModels: {
			#titleLabel -> #LabelModel.
			#addReviewButton -> #ButtonModel.
			#treeList -> #GrUITreeModel.
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
				content: item
		].
	self treeList whenSelectedItemChanged: [ :node |
		node isReview
			ifTrue: [
				selectedReviewChanged cull: node content.
				selectedReview := node content.
			]
			ifFalse: [
				selectedRepository := node content.
			]
	].