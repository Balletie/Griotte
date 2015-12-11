spec
specLayout
	<spec: #default>

	^ SpecLayout composed newColumn: [ :column | 
		column
			add: #list;
			addSplitter;
			add: #diff
		].