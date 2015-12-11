visitor
visitCodeChange: aChange
	"Default behavior for any change."
		
	^ packageNames includes: aChange affectedPackageName