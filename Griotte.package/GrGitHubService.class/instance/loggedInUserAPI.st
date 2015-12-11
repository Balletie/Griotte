private accessing
loggedInUserAPI

	^ loggedInUser ifNil: [ loggedInUser := github user ]