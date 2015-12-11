actions
requestLogin
	| loginDialog |
	loginDialog := GrUILoginDialog new.
	loginDialog okOrCancel okAction: [ | username |
		username := loginDialog usernameText text asString.
		self isDisplayed ifTrue: [
			windowModel toolbar: (self loginMenuForUser: username withAction: [ self inform: 'Hai' ])
		].
		self title: 'Griotte - Logged in as ' , username
	].
	loginDialog openWithSpec.