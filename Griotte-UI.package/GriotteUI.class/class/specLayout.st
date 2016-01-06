spec
specLayout
	<spec: #default>
	^ SpecLayout composed newRow: [ :row | 
		row
			add: #reviewPanel width: 400;
			addSplitter;
			newColumn: [ :col |
				col
					add: #commentList;
					newRow: [ :buttons |
						buttons
							add: #newCommentButton.
					] height: self buttonHeight.
			].
		].