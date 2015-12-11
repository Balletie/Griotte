specs
defaultSpec
	<spec: #default>

	^ SpecLayout composed newColumn: [ :col |
		col
			newRow: [ :row |
				row
					add: #infoLabel;
					add: #editIcon width: GriotteUI editIcon width + 40.
			] height: self toolbarHeight;
			add: #commentText
	]