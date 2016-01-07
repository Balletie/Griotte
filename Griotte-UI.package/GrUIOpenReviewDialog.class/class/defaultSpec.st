specs
defaultSpec
	<spec: #default>

	^ SpecLayout composed newColumn: [ :col |
		col
			add: #repositoryDropList height: self inputTextHeight;
			add: #reviewDropList height: self inputTextHeight
	]