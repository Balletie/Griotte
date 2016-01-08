displaying
authenticatedMenu
	" Return the MenuModel for an authenticated user. "
	| user |
	user := currentContext value user.
	^ MenuModel new addGroup: [ :group | 
		group addItem: [ :item | 
			item
				name: user username;
				description: 'Currently logged in.';
				icon: (user avatar scaledToSize: 16 @ 16)
		].
		group addItem: [ :item |
			item
				name: 'Refresh';
				description: 'Refresh the contents';
				icon: (Smalltalk ui icons refresh);
				action: [ self refresh ] ]
	]