actions
requestLogin
	| loginDialog loginDialogModel |
	loginDialogModel := GrUILoginDialog new.
	loginDialog := loginDialogModel openDialogWithSpec.
	loginDialog okAction: [ | username password |
		username := loginDialogModel usernameText text asString.
		password := loginDialogModel passText text asString.
		loggedInUser := GrLoggedInUser
			withUsername: username
			password: password
			onServiceClass: self class serviceClass.
		self isDisplayed ifTrue: [
			windowModel	toolbar: (self
				loginMenuForUser: loggedInUser get
				withIcon: (loggedInUser avatar get scaledToSize: 16 @ 16)
				withAction: [ self inform: 'Hai' ])
		].
		self title: 'Griotte - Logged in as ' , loggedInUser get.
		self reviewPanel addReviewButton enable.
	].