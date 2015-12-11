accessing
loginMenuForUser: aUserString withAction: aBlock
	^ MenuModel new addGroup: [ :group | 
		group addItem: [ :item | 
			item
				name: aUserString;
				description: 'Currently logged in';
				icon: Smalltalk ui icons helpIcon;
				action: aBlock
		]
	]