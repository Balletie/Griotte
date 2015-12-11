spec
defaultSpec
	<spec: #default>

	^ SpecLayout composed newColumn: [ :col |
		col
			add: #author height: self toolbarHeight;
			add: #commentText
	]