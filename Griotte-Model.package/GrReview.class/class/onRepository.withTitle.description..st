instance creation
onRepository: aRepository withTitle: aTitleString description: aDescriptionString

	self assert: aRepository class = self repositoryClass.
	^ self
		createOnRepository: aRepository
		withTitle: aTitleString
		description: aDescriptionString