actions
showCommentsFor: anItem
	| commentModels |
	commentModels := {
		GrUIComment
			createComment: 'Hello, nice job.
Blablabla, I have multiple lines.
Bye.'
			by: 'Skip Lentz'.
		GrUIComment
			createComment: 'Thanks man, I worked very hard on this so it is nice to hear.'
			by: 'Martin Dias'.
	} flatCollect: [ :e | { e. e. e. e. } ].
	commentList := FTEasyListMorph new
		dataSource: GrFTEasyListDataSource new;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		rowHeight: 100;
		intercellSpacing: 10;
		color: Smalltalk ui theme windowColor;
		backgroundColor: Smalltalk ui theme windowColor;
		secondarySelectionColor: Smalltalk ui theme windowColor;
		headerColor: Smalltalk ui theme windowColor;
		selectionColor: Smalltalk ui theme windowColor;
		elements: commentModels;
		display: [ :cmmnt | GrUIComment new
			withComment: cmmnt;
			buildWithSpec ];
		asSpecAdapter.