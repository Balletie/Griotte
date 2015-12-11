accessing
loginMenuForUser: aUserString withSubMenu: subMenu withAction: aBlock
	^ self
		loginMenuForUser: aUserString
		withIcon: Smalltalk ui icons helpIcon
		withSubMenu: subMenu
		withAction: aBlock