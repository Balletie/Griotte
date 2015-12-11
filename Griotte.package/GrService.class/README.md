I represent a service for storing and creating objects. My subclasses specify where these objects are created and stored. This can be on a remote location, or local.

My responsibility is allowing collaborators to create objects stored on a service. Furthermore, collaborators can ask me for information which can't otherwise be retrieved from existing GrServiceObjects (e.g. the currently logged in user).

My main collaborator is GrLoggedInUser, which uses me to create reviews and comments.