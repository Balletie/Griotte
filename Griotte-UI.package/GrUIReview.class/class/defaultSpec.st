specs
defaultSpec
	<spec: #default>

	^ SpecLayout composed newColumn: [ :col |
		col
			add: #titleLabel height: self toolbarHeight;
			newRow: [ :row |
				row
					add: #avatarImage width: self avatarSize;
					add: #usernameLabel;
					add: #approveButton width: 80;
					add: #rejectButton width: 80 ]
				height: self toolbarHeight;
			add: #descriptionText;
			add: #commentList
	]