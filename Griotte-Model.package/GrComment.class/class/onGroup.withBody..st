instance creation
onGroup: aGroup withBody: aString

	self assert: aGroup class = self groupClass.
	^ self createOnGroup: aGroup withBody: aString