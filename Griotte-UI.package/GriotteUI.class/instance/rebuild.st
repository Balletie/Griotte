actions
rebuild

	self needRebuild: false.
	self reviewPanel needRebuild: false.
	self buildWithSpec.
	" Unfortunately, this has to be done since when
	  rebuilding, the state of the reviewpanel is changed. "
	self reviewPanel treeList expandAll