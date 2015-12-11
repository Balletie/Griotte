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
	usernameText
		autoAccept: true.
	passLabel
		label: 'Password:'.
	passText
		autoAccept: true;
		beEncrypted.
	self focusOrder
		add: usernameText;
		add: passText.