world menu
menuCommandOn: aBuilder
	" Register Griotte to the world menu, under Tools. "
	<worldMenu>
	(aBuilder item: #Griotte)
		order: 0.27;
		icon: Smalltalk ui icons versionControl;
		parent: #Tools;
		label: 'Griotte Code Review';
		action: [ self open ]