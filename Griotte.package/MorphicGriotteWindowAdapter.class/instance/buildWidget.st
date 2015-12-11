factory
buildWidget
	^ GriotteSpecWindow new
		model: model;
		isResizeable: self isResizeable;
		yourself.