initialization
initializeWidgets

	displayComment := IdentityNewValueHolder value: false.
	displayComment whenChangedSend: #setCommentBox to: self.
	currentLayout := self class specLayoutNoComment.
	nextLayout := self class specLayoutComment.
	self
		title: 'Griotte';
		instantiateModels: #( 
			#list #TreeModel
			#diff #DiffModel
			#comment #TextModel
			).
	self list
		roots: (EpMonitor current log
			priorEntriesFromHead
			select: [ :e | e content isCodeChange ]);
		rootNodeHolder: [ :item |
			TreeNodeModel new
				content: item;
				icon: (item content accept: EpIconVisitor new). ];
		multiSelection: true;
		displayBlock: [:item |
			"TODO: find solution without morph."
			PanelMorph new
				changeTableLayout;
				vResizing: #shrinkWrap;
				hResizing: #shrinkWrap;
				listDirection: #leftToRight;
				cellInset: 3;
				addAllMorphs: (item content accept: EpDisplayMorphVisitor new);
				yourself.
		].