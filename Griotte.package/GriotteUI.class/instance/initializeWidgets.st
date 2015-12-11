initialization
initializeWidgets

	self
		title: 'Griotte';
		instantiateModels: { 
			#list -> #TreeModel.
			#diff -> #DiffModel
			}.
	self list
		roots: (EpMonitor current log
			priorEntriesFromHead
			select: [ :e | e content isCodeChange ]);
		rootNodeHolder: [ :item |
			TreeNodeModel new
				content: item content;
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
				addAllMorphs: (item accept: EpDisplayMorphVisitor new);
				yourself.
		].