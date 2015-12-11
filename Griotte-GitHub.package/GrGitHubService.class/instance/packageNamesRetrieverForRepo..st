private accessing
packageNamesRetrieverForRepo: aGHRepository

	aGHRepository
		initializeWithClient: github clientCopy;
		jsonReader: github readerCopy.
	^ [ :event | GitHubFileTreeRepository new
		initializeWithRepository: aGHRepository branch: event ref;
		allPackageNames ]