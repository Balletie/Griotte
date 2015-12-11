accessing
whenSelectedReviewChanged: aBlock
	self treeList whenSelectedItemChanged: [ :item|
		" TODO: Make specialised TreeNode classes for reviews and repositories "
		item class name = 'GrReview'
			ifTrue: [
				selectedReview := item.
				aBlock cull: item
			]
	].