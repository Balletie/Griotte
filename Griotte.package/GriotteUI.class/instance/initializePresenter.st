initialization
initializePresenter

	self list whenSelectedItemsChanged: [ :items | | head last |
		items ifNotEmpty: [
			| comment hasComment |
			head := items first.
			last := items last.
			last ifNil: [ ^ self ].
			"TODO: use groupBy to condense changes of different events into one diff"
			self diff
				leftText: (last content accept: EpOldStateVisitor new);
				rightText: (head content accept: EpNewStateVisitor new).

			" Set the comment box. "
			hasComment := false.
			comment := EpMonitor current log
				commentAt: last
				ifPresent: [
					self comment text: comment.
					hasComment := true.
				].
			self displayComment: hasComment.
		].
	]