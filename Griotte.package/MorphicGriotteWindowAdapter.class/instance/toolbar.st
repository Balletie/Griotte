accessing
toolbar
	| toolbarWidget |
	toolbarWidget := self model toolbar.
	toolbarWidget ifNil: [ ^ nil ].
	toolbarWidget := toolbarWidget buildWithSpec.
	toolbarWidget borderWidth: 0.
	^ toolbarWidget