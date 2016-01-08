accessing
allLocalReviews

	^ self localRepositories flatCollect: [ :repo | repo localReviews ]