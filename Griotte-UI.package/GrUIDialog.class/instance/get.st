accessing
get

	[ accepted or: [ dialogModel cancelled ] ]
		whileFalse: [ " wait " ].
	dialogModel cancelled
		ifTrue: [ ^ nil ].
	^ self createProduct