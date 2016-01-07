initialization
initialize

	super initialize.
	contexts := OrderedCollection new.
	currentContext := IdentityNewValueHolder value: nil.

	currentContext whenChangedDo: [ :newContext |
		newContext
			ifNil: [ self showLoginMenu ]
			ifNotNil: [
				self showAuthenticatedMenu.
				self reviewPanel addReviewButton enable.
				self reviewPanel openReviewButton enable ] ].