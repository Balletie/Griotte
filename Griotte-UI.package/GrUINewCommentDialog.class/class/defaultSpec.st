specs
defaultSpec
	<spec: #default>

	^ SpecLayout composed newColumn: [ :col |
		col
			add: #commentText
	]