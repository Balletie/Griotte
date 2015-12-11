spec
defaultSpec
	<spec: #default>

	^ SpecLayout composed newColumn: [ :col |
		col
			newRow: [ :row |
				row
					add: #authorPreLabel width: 75;
					add: #authorLabel;
					add: #timeLabel;
					add: #editIcon width: self editIcon width.
			] height: self toolbarHeight;
			add: #commentText
	]