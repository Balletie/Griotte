specs
defaultSpec
	<spec: #default>

	^ SpecLayout composed newColumn: [ :col |
		col
			add: #titleLabel height: self toolbarHeight;
			newRow: [ :row |
				row
					add: #avatarImage width: self avatarSize;
					add: #usernameLabel ]
				height: self toolbarHeight;
			add: #descriptionText;
			add: #commentList
	]