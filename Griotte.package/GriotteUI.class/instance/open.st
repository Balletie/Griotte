displaying
open
	| windowModel menuModel |
	SpecInterpreter bindings: GriotteSpecBinding new.
	windowModel := self openWithSpec.
	menuModel := MenuModel new
		addGroup: [ :group |
			group addItem: [ :item |
				item
					name: 'Balletie';
					description: 'Currently logged in';
					icon: Smalltalk ui icons helpIcon;
					action: [ self inform: 'Hai' ]
			]
		].
	windowModel toolbar: menuModel.