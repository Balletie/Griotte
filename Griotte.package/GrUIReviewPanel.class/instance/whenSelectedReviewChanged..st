accessing
whenSelectedReviewChanged: aBlock
	self treeList whenSelectedItemChanged: [ :item|
		" TODO: Make specialised TreeNode classes for reviews and repositories "
		item class name = 'GrReview'
			ifTrue: [
				aBlock cull: item.
				selectedReview := item.
			]
	].