accessing
loginMenuForUser: aUserString withIcon: icon withSubMenu: subMenu withAction: aBlock
	^ MenuModel new addGroup: [ :group | 
		group addItem: [ :item | 
			item
				name: aUserString;
				description: 'Currently logged in';
				icon: icon;
				action: aBlock;
				subMenu: subMenu.
		]
	]