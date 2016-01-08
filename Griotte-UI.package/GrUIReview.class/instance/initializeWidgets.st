initialization
initializeWidgets

	titleLabel := self newLabel.
	descriptionText := self newTextInput.
	avatarImage := self newImage
		action: [ | avatar |
			avatar := reviewModel creator avatar.
			ImageModel new
				title: 'Avatar of ' , reviewModel creator username;
				extent: avatar extent;
				image: avatar;
				openWithSpec ].
	usernameLabel := self newLabel