private accessing
loggedInUserAPI

	^ loggedInUser ifNil: [ loggedInUser := api user ]