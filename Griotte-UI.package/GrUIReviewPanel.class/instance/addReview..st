accessing
addReview: aReview

	(self treeList roots includes: aReview repository)
		ifFalse: [
			" Add repository to list. TODO: create method for this in reviewpanel "
			self treeList roots: (self treeList roots
				copyWith: aReview repository)
		].
	self treeList updateTree.
	^ aReview