actions
requestLogin
	| loginDialog |
	loginDialog := GrUILoginDialog new.
	loginDialog okOrCancel okAction: [ | username password |
		username := loginDialog usernameText text asString.
		password := loginDialog passText text asString.
		loggedInUser := GrLoggedInUser
			withUsername: username
			password: password
			onServiceClass: self class serviceClass.
		self isDisplayed ifTrue: [
			windowModel toolbar: (self
				loginMenuForUser: loggedInUser get
				withIcon: (loggedInUser avatar get scaledToSize: 16@16)
				withAction: [ self inform: 'Hai' ])
		].
		self title: 'Griotte - Logged in as ' , loggedInUser get.
	].
	loginDialog openWithSpec.