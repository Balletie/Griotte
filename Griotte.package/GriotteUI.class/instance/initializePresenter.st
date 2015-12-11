initialization
initializePresenter

	self list whenSelectedItemsChanged: [ :items | | head last |
		items ifNotEmpty: [
			| hasComment |
			head := items first.
			last := items last.
			last ifNil: [ ^ self ].
			"TODO: use groupBy to condense changes of different events into one diff"
			self diff
				leftText: (last content accept: EpOldStateVisitor new);
				rightText: (head content accept: EpNewStateVisitor new).

			" Set the comment box. "
			hasComment := false.
			EpMonitor current log
				commentAt: last
				ifPresent: [ :comment |
					self comment text: comment.
					hasComment := true.
				].
			self displayComment: hasComment.
		].
	]