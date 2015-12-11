spec
defaultSpec
	<spec: #default>

	^ SpecLayout composed newColumn: [ :col |
		col
			newRow: [ :row |
				row
					add: #titleLabel;
					add: #addReviewButton width: GriotteUI addIcon width + 80.
			] height: self toolbarHeight;
			add: #treeList
	]