visitor
visitCodeChange: aChange
	^ packageNames := packageNames copyWithout: aChange affectedPackageName