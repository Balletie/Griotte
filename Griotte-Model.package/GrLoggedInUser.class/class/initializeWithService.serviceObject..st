initialization
initializeWithService: aService serviceObject: aServiceObject
	^ (self initializeWithServiceObject: aServiceObject) in: [ :loggedIn |
		loggedIn
			initializeWithService: aService;
			initializeWithAvatar: (aService avatarForUser: loggedIn);
			yourself
		]