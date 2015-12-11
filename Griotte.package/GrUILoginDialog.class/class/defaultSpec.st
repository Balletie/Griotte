specs
defaultSpec
	<spec: #default>

	^ SpecLayout composed newColumn: [ :col |
		col
			newRow: [ :row |
				row
					add: #usernameLabel width: self labelWidth;
					add: #usernameText
			] height: self inputTextHeight;
			newRow: [ :row |
				row
					add: #passLabel width: self labelWidth;
					add: #passText
			] height: self inputTextHeight;
			add: #okOrCancel height: self toolbarHeight
		];
		yourself