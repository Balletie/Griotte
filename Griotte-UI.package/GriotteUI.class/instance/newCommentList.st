initialization
newCommentList
	^ FTEasyListMorph new
		dataSource: GrFTEasyListDataSource new;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		rowHeight: 100;
		intercellSpacing: 10;
		color: Smalltalk ui theme windowColor;
		secondarySelectionColor: Smalltalk ui theme windowColor;
		headerColor: Smalltalk ui theme windowColor;
		selectionColor: Smalltalk ui theme windowColor;
		display: [ :cmmnt | GrUIComment new
			withComment: cmmnt;
			buildWithSpec ]