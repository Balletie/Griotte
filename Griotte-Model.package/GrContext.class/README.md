I represent the connection between the user that is currently logged in (a GrUser) and the repositories/reviews that are locally open. All operations on these reviews will be done by the agent represented by the user.

I am used to access the local reviews and repositories, and can also be asked for all repositories which is a merged collection of the local and non-local repositories.

Public API and Key Messages

- allRepositories returns a merged collection of the local and non-local repositories.
- localRepositories returns just the repositories active in this context.
- Send withLoggedInUser: with a GrUser as parameter to instantiate me.

Internal Representation and Key Implementation Points.

    Instance Variables
	localRepositories:		an OrderedCollection of GrRepositories
	loggedInUser:		a GrUser that is seen as "logged in".