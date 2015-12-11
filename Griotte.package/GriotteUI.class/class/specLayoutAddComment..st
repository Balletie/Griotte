spec
specLayoutAddComment: aCommentListBlock

	^ SpecLayout composed newRow: [ :row | 
		row
			add: #list width: 400;
			addSplitter;
			newColumn: [ :col |
				col
					add: #diff bottom: 0.4;
					addSplitter;
					newColumn: aCommentListBlock;
					newRow: [ :newComment |
						newComment add: #comment
					] height: self inputTextHeight;
					newRow: [ :buttons |
						buttons
							add: #saveButton;
							add: #cancelButton
					] height: self buttonHeight.
			].
		].