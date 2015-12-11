initialization
initializeWidgets

	displayComment := IdentityNewValueHolder value: false.
	displayComment whenChangedSend: #toggleCommentBox to: self.
	currentLayout := self class specLayoutNoComment.
	nextLayout := self class specLayoutComment.
	self
		title: 'Griotte';
		instantiateModels: #( 
			#list #TreeModel
			#diff #DiffModel
			#commentList #ListModel
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
	self focusOrder
		add: self list;
		add: self comment;
		add: self saveButton.