accessing
needRebuild: aBoolean

	super needRebuild: aBoolean.
	self treeList needRebuild: aBoolean.
	self titleLabel needRebuild: aBoolean.
	self addReviewButton needRebuild: aBoolean.
	self openReviewButton needRebuild: aBoolean.