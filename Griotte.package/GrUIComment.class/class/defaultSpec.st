spec
defaultSpec
	<spec: #default>

	^ SpecLayout composed newColumn: [ :col |
		col
			newRow: [ :row |
				row
					add: #infoLabel;
					add: #editIcon width: self editIcon width.
			] height: self toolbarHeight;
			add: #commentText
	]