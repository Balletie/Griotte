initialization
initializeWithCreator: aUser project: aProject repository: aRepository
	creator := aUser.
	project := aProject.
	repository := aRepository.
	repository addReview: self.