displaying
open
	| windowModel windowWidget menuModel menuWidget |
	windowModel := self openWithSpec.
	windowWidget := windowModel window value.
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
	menuWidget := menuModel buildWithSpec.
	menuWidget hResizing: #shrinkWrap.
	windowWidget replacePane: windowWidget menuBox with: menuWidget.
	"	1. Create ToolDockingBar
		2. Add existing menu to it
		3. shrinkWrap
		4. replacePane: with: "