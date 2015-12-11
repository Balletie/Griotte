initialization
withUsername: aUsername password: aPassword onServiceClass: aServiceClass
| service serviceObject |

service := aServiceClass forUsername: aUsername password: aPassword.
serviceObject := service loggedInUser.

^ self initializeWithService: service serviceObject: serviceObject