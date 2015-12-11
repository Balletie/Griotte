spec
specLayoutComment

	^ SpecLayout composed newRow: [ :row | 
		row
			add: #list;
			addSplitter;
			newColumn: [ :col |
				col
					add: #diff;
					addSplitter;
					add: #comment.
			].
		].