login
onAcceptUsername: usernameInput password: passwordInput
	" Create and add context. Set it as the current one. "
	| api user |
	api := GitHub
		initializeWithUsername: usernameInput text
		password: passwordInput text.
	user := GrGitHubLoggedInUser onAPIUser: api user.
	currentContext value: (GrContext withLoggedInUser: user).
	contexts add: currentContext value