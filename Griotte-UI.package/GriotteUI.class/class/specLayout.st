spec
specLayout
	<spec: #default>
	^ SpecLayout composed newRow: [ :row | 
		row
			add: #reviewPanel width: 300;
			addSplitter;
			add: #reviewHolder
		].