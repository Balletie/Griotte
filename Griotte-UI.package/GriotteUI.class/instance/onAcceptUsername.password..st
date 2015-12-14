login
onAcceptUsername: usernameInput password: passwordInput
	" Create and add context. Set it as the current one. "
	| api user |
	api := GitHub
		initializeWithUsername: usernameInput text
		password: passwordInput text.
	user := GrNGitHubLoggedInUser onAPIUser: api user.
	currentContext value: (GrNContext withLoggedInUser: user).
	contexts add: currentContext value