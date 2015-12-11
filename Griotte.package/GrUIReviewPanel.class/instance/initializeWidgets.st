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
		label: nil;
		icon: GriotteUI addIcon;
		help: 'Create a new review'.
	self treeList
		displayBlock: [ :item | item get ];
		childrenBlock: [ :item |
			(item class name = 'GrRepository')
				ifTrue: [ item reviews ]
				ifFalse: [ #() ] ].