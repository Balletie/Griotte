accessing
loginMenu
	^ self loginMenuForUser: 'Login' withAction: [ self requestLogin ]