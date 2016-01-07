comparing
= anotherRepository

	^ (self class = anotherRepository class)
		and: [ self name = anotherRepository name ]