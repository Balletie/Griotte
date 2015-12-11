spec
specLayoutNoComment
	<spec: #default>

	^ SpecLayout composed newRow: [ :row | 
		row
			add: #list;
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