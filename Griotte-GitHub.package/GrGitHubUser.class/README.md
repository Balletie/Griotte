I am a GitHub backend for a user.

I encapsulate how the relevant information pertaining to the user is accessed (avatar, username, repositories).

My collaborator is a GHUser, which I use to access the information.

See my superclass for descriptions of the methods

To instantiate me, use self class>>onAPIUser: with a GHUser as parameter.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	apiUser:		a GHUser for accessing the information