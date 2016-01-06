specs
defaultSpec
	<spec: #default>

	^ SpecLayout composed newColumn: [ :col |
		col
			add: #repositoryDropList height: self inputTextHeight;
			add: #reviewInputText height: self inputTextHeight;
			add: #descriptionInputText
	]