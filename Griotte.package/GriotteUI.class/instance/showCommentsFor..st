actions
showCommentsFor: anItem
	| commentModels counter |

	self needFullRebuild: false.

	counter := 1.
	commentModels := {
		GrUIComment author: 'Skip Lentz' comment: 'Hello, nice job.
Blablabla, I have multiple lines.
Bye.'.
		GrUIComment author: 'Martin Dias' comment: 'Thanks man, I worked very hard on this so it is nice to hear.'.
	}.

	commentModels do: [ :comment |
		self assign: comment to: ('comment' , (counter asString)) asSymbol.
		counter := counter + 1.
	].

	commentsColumnBlock := [ :column |
		1 to: counter - 1 do: [ :num |
			column add: ('comment' , (num asString)) asSymbol.
		]
	].

	self buildWithSpecLayout: (currentLayout value: commentsColumnBlock).