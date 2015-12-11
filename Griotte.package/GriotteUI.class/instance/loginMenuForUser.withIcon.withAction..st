accessing
loginMenuForUser: aUserString withIcon: icon withAction: aBlock
	^ self
		loginMenuForUser: aUserString
		withIcon: icon
		withSubMenu: nil
		withAction: aBlock