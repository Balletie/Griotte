spec
defaultSpec
	<spec: #default>

	^ SpecLayout composed newColumn: [ :col |
		col
			newRow: [ :row |
				row
					add: #infoLabel;
					add: #editIcon width: self editIcon width + 8.
			] height: self toolbarHeight;
			add: #commentText
	]