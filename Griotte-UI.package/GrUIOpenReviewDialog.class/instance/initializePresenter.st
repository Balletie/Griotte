initialization
initializePresenter

	self repositoryDropList whenSelectedItemChanged: [ :repo |
		repo ifNotNil: [
			self reviewDropList items: (repo allReviews \ repo localReviews) ] ]