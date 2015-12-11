initialization
initializeWidgets

	self
		title: 'Login';
		instantiateModels: {
			#usernameLabel -> #LabelModel.
			#usernameText -> #TextInputFieldModel.
			#passLabel -> #LabelModel.
			#passText -> #TextInputFieldModel.
			#okOrCancel -> #OkCancelToolbar.
		}.

	usernameLabel
		label: 'Username:'.
	passLabel
		label: 'Password:'.
	passText
		beEncrypted.
	self focusOrder
		add: usernameText;
		add: passText.