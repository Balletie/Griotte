initialization
initializeWidgets

	self
		title: 'Griotte Reviews';
		instantiateModels: {
			#titleLabel -> #LabelModel.
			#openReviewButton -> #ButtonModel.
			#addReviewButton -> #ButtonModel.
			#treeList -> #GrUITreeModel.
		}.

	self titleLabel label: 'Reviews'.
	self openReviewButton
		label: 'Open Review';
		icon: GriotteUI openIcon;
		help: 'Open an existing review'.
	self addReviewButton
		label: 'New Review';
		icon: GriotteUI addIcon;
		help: 'Create a new review'.
	self treeList
		multiSelection: false;
		rootNodeHolder: [ :item |
			GrUIRepositoryNode new
				content: item
		];
		columns: { TreeColumnModel new
			displayBlock: [:node | node label ] }.

	self treeList whenSelectedNodeChanged: [ :node |
		node isReview
			ifTrue: [
				selectedReviewChanged cull: node content.
				selectedReview := node content.
			]
			ifFalse: [
				selectedRepository := node content.
			]
	].