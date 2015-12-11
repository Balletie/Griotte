accessing
oneTriggerWithFourChildren

	^ self getOrBuildLog: [ :builder |
		builder logInitial.
		builder
			logChildren: 4
			triggerReference: builder logHeadReference ]