comparing
= anotherReview
	" Subclasses may want to override this default implementation. "
	^ (self class = anotherReview class)
		and: [ self title = anotherReview title
			and: [ self repository = anotherReview repository ] ]
		