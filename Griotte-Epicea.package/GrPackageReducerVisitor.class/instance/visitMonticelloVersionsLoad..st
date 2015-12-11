visitor
visitMonticelloVersionsLoad: anEvent
	^ packageNames := packageNames difference: anEvent packageNames