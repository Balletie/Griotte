spec
specLayout
	<spec: #default>
	^ SpecLayout composed newRow: [ :row | 
		row
			add: #list width: 400;
			addSplitter;
			newColumn: [ :col |
				col
					add: #diff;
					addSplitter;
					add: #commentList;
					newRow: [ :buttons |
						buttons
							add: #newCommentButton.
					] height: self buttonHeight.
			].
		].