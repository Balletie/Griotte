spec
specLayout
	<spec: #default>

	^ SpecLayout composed newRow: [ :row | 
		row
			add: #list;
			addSplitter;
			add: #diff
		].