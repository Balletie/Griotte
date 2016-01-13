initialization
initializePresenter

	self avatarImage
		action: [ | avatar |
			avatar := reviewModel creator avatar.
			ImageModel new
				title: 'Avatar of ' , reviewModel creator username;
				extent: avatar extent;
				image: avatar;
				openWithSpec ].
	self approveButton
		action: [ reviewModel approve ].
	self rejectButton
		action: [ reviewModel reject ].