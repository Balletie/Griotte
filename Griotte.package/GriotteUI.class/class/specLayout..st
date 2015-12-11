spec
specLayout: aCommentListBlock

	^ SpecLayout composed newRow: [ :row | 
		row
			add: #list;
			addSplitter;
			newColumn: [ :col |
				col
					add: #diff;
					addSplitter;
					newColumn: aCommentListBlock;
					newRow: [ :buttons |
						buttons
							add: #newCommentButton.
					] height: self buttonHeight.
			].
		].