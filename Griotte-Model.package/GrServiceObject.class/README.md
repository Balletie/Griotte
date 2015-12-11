I am an abstract superclass for services which contain data for Griotte. I provide an access point for just one unit of data, and the timestamp of its creation.

My main responsibility is encapsulating the logic for storing, updating and accessing the data. In the case of external services such as Github, I either encapsulate their API or delegate to it.

My collaborators are GrServiceMappedObjects