visitor
visitMonticelloVersionSave: anEvent
	^ packageNames := packageNames copyWithout: anEvent affectedPackageName