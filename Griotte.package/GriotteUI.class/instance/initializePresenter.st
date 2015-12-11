initialization
initializePresenter

	list whenSelectedItemsChanged: [ :items | | head last |
		items ifNotEmpty: [
			head := items first.
			last := items last.
			"TODO: use groupBy to condense changes of different events into one diff"
			diff
				leftText: (last accept: EpOldStateVisitor new);
				rightText: (head accept: EpNewStateVisitor new).
			]
		]