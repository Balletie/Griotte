actions
rebuild

	self needFullRebuild: true.
	self needRebuild: false.
	self reviewPanel needRebuild: false.
	self reviewHolder needRebuild: true.
	self buildWithSpec.
	self reviewPanel treeList expandAll