initialization
initializeWithRepository: aRepository
	" Mine the events that are relevant to aRepository. "
	self initializeWithPackageNames: aRepository packageNames.