accessing
toolbar
	| toolbarWidget |
	toolbarWidget := self model toolbar.
	toolbarWidget ifNil: [ ^ nil ].

	^ toolbarWidget buildWithSpec.