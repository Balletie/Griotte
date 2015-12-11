actions
requestLogin

	| loginDialog |
	loginDialog := GrUILoginDialog new.
	loginDialog okOrCancel okAction: [
		self isDisplayed ifTrue: [
			windowModel toolbar: (self loginMenuForUser: loginDialog usernameText text withAction: [ self inform: 'Hai' ])
		]
	].
	loginDialog openWithSpec