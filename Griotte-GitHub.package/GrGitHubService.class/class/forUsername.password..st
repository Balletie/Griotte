initialization
forUsername: aUsername password: aPassword

	^ self forAccessToken: (PlatformResolver forCurrentPlatform home / '.griotte') contents trim
"
	^ self initializeWithGitHub: (GitHub
			initializeWithUsername: aUsername
			password: aPassword)
"