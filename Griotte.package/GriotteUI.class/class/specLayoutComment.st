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
					add: #commentList;
					add: #comment
						origin: 0@0 corner: 1@0
						offsetOrigin: 0@0
						offsetCorner: 0@(self inputTextHeight);
					newRow: [ :buttons |
						buttons
							add: #saveButton;
							add: #cancelButton
					] height: self buttonHeight.
			].
		].