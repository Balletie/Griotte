initialize
initializeBindings
	super initializeBindings.
	bindings
		at: #GriotteWindowAdapter put: #MorphicGriotteWindowAdapter;
		yourself