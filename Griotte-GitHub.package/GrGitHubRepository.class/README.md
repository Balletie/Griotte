I am a GitHub backend for repositories.

I encapsulate the accessing of information such as the name and reviews (pull requests) in a repository.

I collaborate with GHRepository which I delegate to for that information.

Public API and Key Messages

- See my superclass for a description of all methods.
- Create me using onAPIRepository: with a GHRepository as parameter.

Internal Representation and Key Implementation Points.

    Instance Variables
	apiRepository:		a GHRepository to delegate to.