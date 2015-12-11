initialization
initialize
	super initialize.
	toolbar := nil asValueHolder.
	toolbar whenChangedDo: [ :it | self changed: #toolbar: with: { it } ].