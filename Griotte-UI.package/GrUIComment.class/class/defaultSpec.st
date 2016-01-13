specs
defaultSpec
	<spec: #default>

	^ SpecLayout composed newColumn: [ :col |
		col
			newRow: [ :row |
				row
					add: #infoLabel
			] height: self toolbarHeight;
			add: #commentText
	]